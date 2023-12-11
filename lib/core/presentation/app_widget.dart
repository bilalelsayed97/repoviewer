import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/Utility/theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AuthCubit>(context).checkAndUpdateStatus();
    // SembastDatabase().init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Repo Viewer',
        routerConfig: BlocProvider.of<AuthCubit>(context).appRouter.config(),
        theme: themeData);
  }
}
