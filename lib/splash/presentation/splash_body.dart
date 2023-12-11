import 'package:flutter/material.dart';
import 'package:repoviewr/splash/presentation/animated_logo.dart';
import 'package:repoviewr/splash/presentation/animated_text.dart';
import 'package:repoviewr/core/presentation/loading_indicator.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(),
          AnimatedLogo(),
          SplashAnimatedText(),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: LoadingIndicator(),
          ),
        ],
      ),
    );
  }
}
