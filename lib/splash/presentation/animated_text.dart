import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashAnimatedText extends StatelessWidget {
  const SplashAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      isRepeatingAnimation: false,
      animatedTexts: [
        TypewriterAnimatedText('GitHub Repo Viewer',
            cursor: '',
            speed: const Duration(
              milliseconds: 40,
            ),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        TypewriterAnimatedText('Loading...',
            cursor: '',
            speed: const Duration(
              milliseconds: 50,
            ),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
