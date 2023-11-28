import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/Utility/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    authCubit.checkAndUpdateStatus();
    final appRouter = authCubit.appRouter;
    return MaterialApp.router(
        title: 'Repo Viewer',
        routerConfig: appRouter.config(),
        theme: themeData);
  }
}
