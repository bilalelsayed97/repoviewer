import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/routes/app_router.gr.dart';

@RoutePage()
class StarredReposPage extends StatelessWidget {
  const StarredReposPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AuthCubit>(context).signOut();
                  AutoRouter.of(context).pushAndPopUntil(const SignInRoute(),
                      predicate: (_) {
                    return false;
                  });
                },
                child: const Text('sign out'))
          ],
        ),
      ),
    );
  }
}
