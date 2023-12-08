import 'package:flutter/material.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';

class RepoTile extends StatelessWidget {
  final GithubRepo repo;
  const RepoTile({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          clipBehavior: Clip.hardEdge,
          child: CircleAvatar(child: Image.network(repo.owner.avatarUrl))),
      title: Text(repo.fullName),
      subtitle: Text(
        repo.description,
        style: const TextStyle(overflow: TextOverflow.ellipsis),
      ),
      trailing: Column(
        children: [
          const Icon(Icons.star_sharp),
          Text(repo.stargazersCount.toString())
        ],
      ),
    );
  }
}
