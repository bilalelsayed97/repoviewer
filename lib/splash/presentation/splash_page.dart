import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/routes/app_router.gr.dart';
import 'package:repoviewr/splash/presentation/splash_body.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        final authCubit = BlocProvider.of<AuthCubit>(context);
        authCubit.checkAndUpdateStatus();
        state.maybeMap(
            orElse: () {},
            unauthenticated: (_) {
              Future.delayed(const Duration(seconds: 1), () {
                AutoRouter.of(context).pushAndPopUntil(const SignInRoute(),
                    predicate: (route) => false);
              });
            },
            authenticated: (_) {
              Future.delayed(const Duration(seconds: 1), () {
                AutoRouter.of(context).pushAndPopUntil(
                    const StarredReposRoute(),
                    predicate: (route) => false);
              });
            });
      },
      child: const Scaffold(
        body: SplashBody(),
      ),
    );
  }
}
