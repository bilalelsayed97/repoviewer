// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/core/presentation/toasts.dart';
import 'package:repoviewr/github/core/presentation/no_results_display.dart';
import 'package:repoviewr/github/repos/core/application/paginated_repos_cubit/paginated_repos_cubit.dart';
import 'package:repoviewr/github/repos/core/presentation/failure_repo_tile.dart';
import 'package:repoviewr/github/repos/core/presentation/loading_repo_tile.dart';
import 'package:repoviewr/github/repos/core/presentation/repo_tile.dart';
import 'package:repoviewr/github/repos/searched_repos/application/searched_repos_cubit/searched_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos_cubit/starred_repos_cubit.dart';

// ignore: must_be_immutable
class PaginatedRepoListView extends StatefulWidget {
  final void Function(BuildContext context) getNextPage;
  bool isSearch = false;
  PaginatedRepoListView({
    super.key,
    required this.getNextPage,
    required this.isSearch,
  });

  @override
  State<PaginatedRepoListView> createState() => _PaginatedRepoListViewState();
}

class _PaginatedRepoListViewState extends State<PaginatedRepoListView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;

  void _listener(PaginatedReposState state) {
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
  }

  @override
  Widget build(BuildContext context) {
    return widget.isSearch
        ? BlocConsumer<SearchedReposCubit, PaginatedReposState>(
            listener: (context, state) {
              _listener(state);
            },
            builder: (context, state) {
              return _notificationListener(state, canLoadNextPage, () {
                widget.getNextPage(context);
              }, context);
            },
          )
        : BlocConsumer<StarredReposCubit, PaginatedReposState>(
            listener: (context, state) {
              _listener(state);
            },
            builder: (context, state) {
              return _notificationListener(state, canLoadNextPage, () {
                widget.getNextPage(context);
              }, context);
            },
          );
  }
}

class _PaginatedListView extends StatelessWidget {
  final PaginatedReposState state;
  const _PaginatedListView({
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    // context.findAncestorStateOfType<FloatingSearchBarState>()?.widget.height;

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

Widget _notificationListener(PaginatedReposState state, bool canLoadNextPage,
    Function getNextPage, BuildContext context) {
  return NotificationListener<ScrollNotification>(
    onNotification: (notification) {
      final metrics = notification.metrics;
      metrics.maxScrollExtent; //1540.7 full available scroll length
      metrics
          .viewportDimension; //790.7 maximum length of the scroll viewed via mobile screen
      metrics
          .pixels; //the cureent scroll position from top the list tell the end the initial pixels = viewportDimension
      final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
      if (canLoadNextPage && metrics.pixels >= limit) {
        canLoadNextPage = false;
        getNextPage();
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
}
