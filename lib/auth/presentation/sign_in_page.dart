import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/Utility/assets_data.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';
import 'package:repoviewr/core/presentation/routes/app_router.gr.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AuthCubit>(context).checkAndUpdateStatus();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            authenticated: (_) {
              AutoRouter.of(context).pushAndPopUntil(const SplashRoute(),
                  predicate: (route) => false);
            });
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetsData.gitHubLogo,
                    height: context.ww * 0.25,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  const SizedBox(height: 32),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText('Welcome to Repo Viewer',
                          cursor: '',
                          speed: const Duration(
                            milliseconds: 40,
                          ),
                          textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54)),
                    ],
                  ),
                  const SizedBox(height: 32),
                  MaterialButton(
                    elevation: 0,
                    color: Colors.green,
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context)
                          .signIn((authorizationUrl) {
                        final completer = Completer<Uri>();
                        AutoRouter.of(context).push(
                          AuthorizationRoute(
                            autorizationUrl: authorizationUrl,
                            onAuthorizationCodeRedirectAttempt:
                                (redirectedUrl) {
                              completer.complete(redirectedUrl);
                            },
                          ),
                        );
                        return completer.future;
                      });
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.ww * 0.3),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        );
      },
    );
  }
}
