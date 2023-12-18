import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';
import 'package:repoviewr/core/presentation/loading_indicator.dart';
import 'package:repoviewr/core/presentation/routes/app_router.gr.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RepoTile extends StatelessWidget {
  final GithubRepo repo;
  const RepoTile({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: context.ww * 0.065,
        backgroundColor: Colors.white,
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(300),
          child: CachedNetworkImage(
            imageUrl: repo.owner.avatarUrlSmall,
            placeholder: (context, url) => const LoadingIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
      title: Text(repo.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis),
      subtitle: Text(
        repo.description == '' ? 'There is no description.' : repo.description,
        style: const TextStyle(overflow: TextOverflow.ellipsis),
        maxLines: 2,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.star_sharp),
          Text(repo.stargazersCount.toString()),
        ],
      ),
      onTap: () {
        AutoRouter.of(context).push(RepoDetailRoute(
            fullRepoName: repo.fullName,
            imageUrl: repo.owner.avatarUrlSmall,
            repoName: repo.name));
      },
    );
  }
}
