import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';
import 'package:repoviewr/core/presentation/routes/app_router.gr.dart';
import 'package:repoviewr/github/repos/core/application/paginated_repos_cubit/paginated_repos_cubit.dart';
import 'package:repoviewr/github/repos/core/presentation/paginated_repo_list_view.dart';
import 'package:repoviewr/github/repos/searched_repos/application/searched_repos_cubit/searched_repos_cubit.dart';
import 'package:repoviewr/search/presentation/repos_search_bar.dart';

@RoutePage()
class SearchedReposPage extends StatefulWidget {
  final String query;
  const SearchedReposPage({super.key, required this.query});

  @override
  State<SearchedReposPage> createState() => _SearchedReposPageState();
}

class _SearchedReposPageState extends State<SearchedReposPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      BlocProvider.of<SearchedReposCubit>(context).getNextSearchedReposPage(
          widget.query, BlocProvider.of<PaginatedReposCubit>(context).page,
          isNewSearch: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: ReposSearchBar(
        hint: 'Search all repositories...',
        title: widget.query,
        onShouldNavigateToResultPage: (query) {
          AutoRouter.of(context).pushAndPopUntil(
              SearchedReposRoute(query: widget.query),
              predicate: (route) =>
                  route.settings.name == StarredReposRoute.name);
        },
        body: Padding(
          padding: FloatingSearchBar.of(context)?.widget == null
              ? EdgeInsets.only(
                  top: (context.ww / 5) > 65 ? 65 : context.ww / 5)
              : EdgeInsets.only(
                  top: FloatingSearchBar.of(context)!.widget.height +
                      MediaQuery.of(context).padding.top),
          child: PaginatedRepoListView(
            isSearch: true,
            getNextPage: (context) {
              BlocProvider.of<SearchedReposCubit>(context)
                  .getNextSearchedReposPage(widget.query,
                      BlocProvider.of<PaginatedReposCubit>(context).page,
                      isNewSearch: false);
            },
          ),
        ),
        onSignOutButtonPressed: () {},
      ),
    );
  }
}
