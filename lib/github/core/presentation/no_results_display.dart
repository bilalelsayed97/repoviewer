import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repoviewr/core/Utility/assets_data.dart';

class NoResultsDisplay extends StatelessWidget {
  final String message;
  const NoResultsDisplay({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Image.asset(AssetsData.error404),
        ),
        const Gap(16),
        Text(
          message,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
