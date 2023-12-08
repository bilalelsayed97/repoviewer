import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos/starred_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/presentation/repo_tile.dart';
import 'package:repoviewr/github/repos/starred_repos/presentation/shimmer.dart';

class PaginatedRepoListView extends StatelessWidget {
  const PaginatedRepoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StarredReposCubit, StarredReposState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return state.map(
              initial: (_) {
                return null;
              },
              loading: (_) {
                var length = _.repos.entity.length + _.itemsPerPage;
                if (length == _.itemsPerPage) {
                  return const StarredRepoShimmer();
                } else if (length > _.itemsPerPage) {
                  if (index <= (length - _.itemsPerPage)) {
                    return RepoTile(
                      repo: _.repos.entity[index],
                    );
                  } else {
                    return const StarredRepoShimmer();
                  }
                }
              },
              loadSuccess: (_) {
                return RepoTile(
                  repo: _.repos.entity[index],
                );
              },
              loadFailure: (_) {
                return Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                );
              },
            );
          },
          itemCount: state.map(
              initial: (_) => 0,
              loading: (_) => _.repos.entity.length + _.itemsPerPage,
              loadSuccess: (_) => _.repos.entity.length,
              loadFailure: (_) => _.repos.entity.length + 1),
        );
      },
    );
  }
}
