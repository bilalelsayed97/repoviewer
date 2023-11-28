import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:repoviewr/core/Utility/assets_data.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';
import 'package:svg_flutter/svg.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SpinKitDoubleBounce(
          size: context.ww * 0.7,
          color: Colors.grey.shade200,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            AssetsData.gitHubLogo,
            height: context.ww * 0.4,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
