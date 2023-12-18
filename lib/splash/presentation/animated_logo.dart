import 'package:flutter/material.dart';
import 'package:repoviewr/core/Utility/assets_data.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            AssetsData.ocat1,
            height: context.ww * 0.5,
          ),
        ),
      ],
    );
  }
}
