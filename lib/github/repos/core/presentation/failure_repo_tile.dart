import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos_cubit/starred_repos_cubit.dart';

class FailureRepoTile extends StatelessWidget {
  final GithubFailure failure;

  const FailureRepoTile({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).colorScheme.error,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: const Text('An error occured, please, retry'),
          subtitle: Text(
            failure.map(
              api: (_) => 'API returned ${_.errorCode}',
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: const Icon(Icons.warning),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              BlocProvider.of<StarredReposCubit>(context)
                  .getNextStarredReposPage();
              // context
              //     .findAncestorWidgetOfExactType<PaginatedRepoListView>()
              //     ?.;
            },
          ),
        ),
      ),
    );
  }
}
