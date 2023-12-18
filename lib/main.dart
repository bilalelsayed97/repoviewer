import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/infrastructure/sembast_database.dart';
import 'package:repoviewr/core/shared/providers.dart';
import 'package:repoviewr/core/observer/block_observer.dart';
import 'package:repoviewr/core/presentation/app_widget.dart';
import 'package:repoviewr/github/detail/application/repo_detail_cubit/repo_detail_cubit.dart';
import 'package:repoviewr/github/repos/core/application/paginated_repos_cubit/paginated_repos_cubit.dart';
import 'package:repoviewr/github/repos/searched_repos/application/searched_repos_cubit/searched_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos_cubit/starred_repos_cubit.dart';
import 'package:repoviewr/search/application/search_history_cubit/search_history_cubit.dart';

//mateapp
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await SembastDatabase.instance.initialize();
  await initLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AuthCubit>(
        create: (context) => getIt.get<AuthCubit>(),
      ),
      BlocProvider<StarredReposCubit>(
        create: (context) => getIt.get<StarredReposCubit>(),
      ),
      BlocProvider<SearchedReposCubit>(
        create: (context) => getIt.get<SearchedReposCubit>(),
      ),
      BlocProvider<PaginatedReposCubit>(
        create: (context) => getIt.get<PaginatedReposCubit>(),
      ),
      BlocProvider<SearchHistoryCubit>(
        create: (context) => getIt.get<SearchHistoryCubit>(),
      ),
      BlocProvider<RepoDetailCubit>(
        create: (context) => getIt.get<RepoDetailCubit>(),
      ),
    ],
    child: const AppWidget(),
  ));
}
