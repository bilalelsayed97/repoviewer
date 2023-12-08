import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/infrastructure/sembast_database.dart';
import 'package:repoviewr/core/shared/providers.dart';
import 'package:repoviewr/core/observer/block_observer.dart';
import 'package:repoviewr/core/presentation/app_widget.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos/starred_repos_cubit.dart';

//mateapp
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await SembastDatabase().init();
  await initLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => getIt.get<AuthCubit>(),
      ),
      BlocProvider(
        create: (context) => getIt.get<StarredReposCubit>(),
      ),
    ],
    child: const AppWidget(),
  ));
}
