import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/core/presentation/toasts.dart';
import 'package:repoviewr/github/core/presentation/no_results_display.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos_cubit/starred_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/presentation/failure_repo_tile.dart';
import 'package:repoviewr/github/repos/starred_repos/presentation/repo_tile.dart';
import 'package:repoviewr/github/repos/starred_repos/presentation/loading_repo_tile.dart';

class PaginatedRepoListView extends StatefulWidget {
  const PaginatedRepoListView({
    super.key,
  });

  @override
  State<PaginatedRepoListView> createState() => _PaginatedRepoListViewState();
}

class _PaginatedRepoListViewState extends State<PaginatedRepoListView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StarredReposCubit, StarredReposState>(
      listener: (context, state) {
        state.map(
          initial: (_) => canLoadNextPage = true,
          loading: (_) => canLoadNextPage = false,
          loadSuccess: (_) {
            if (!_.repos.isFresh && !hasAlreadyShownNoConnectionToast) {
              hasAlreadyShownNoConnectionToast = true;
              showNoConnectionToast(
                  "You're not online. Some information may be outdated.");
            }
            return canLoadNextPage = _.isNextPageAvailable;
          },
          loadFailure: (_) => canLoadNextPage = false,
        );
      },
      builder: (context, state) {
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final metrics = notification.metrics;
            metrics.maxScrollExtent; //1540.7 full available scroll length
            metrics
                .viewportDimension; //790.7 maximum length of the scroll viewed via mobile screen
            metrics
                .pixels; //the cureent scroll position from top the list tell the end the initial pixels = viewportDimension
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;
            if (canLoadNextPage && metrics.pixels >= limit) {
              canLoadNextPage = false;
              BlocProvider.of<StarredReposCubit>(context)
                  .getNextStarredReposPage();
            }
            return false;
          },
          child: state.maybeWhen(
            loadSuccess: (repo, _) => repo.entity.isEmpty,
            orElse: () => false,
          )
              ? const NoResultsDisplay(message: 'Nothing found.')
              : _PaginatedListView(
                  state: state,
                ),
        );
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  final StarredReposState state;
  const _PaginatedListView({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return state.map(
          initial: (_) => RepoTile(repo: _.repos.entity[index]),
          loading: (_) {
            if (index < _.repos.entity.length) {
              return RepoTile(repo: _.repos.entity[index]);
            } else {
              return const LoadingRepoTile();
            }
          },
          loadSuccess: (_) {
            return RepoTile(
              repo: _.repos.entity[index],
            );
          },
          loadFailure: (_) {
            if (index < _.repos.entity.length) {
              return RepoTile(repo: _.repos.entity[index]);
            } else {
              return FailureRepoTile(failure: _.failure);
            }
          },
        );
      },
      itemCount: state.map(
          initial: (_) => 0,
          loading: (_) => _.repos.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.repos.entity.length,
          loadFailure: (_) => _.repos.entity.length + 1),
    );
  }
}
