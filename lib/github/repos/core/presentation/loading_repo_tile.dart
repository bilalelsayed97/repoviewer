import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';
import 'package:shimmer/shimmer.dart';

class LoadingRepoTile extends StatelessWidget {
  const LoadingRepoTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade200,
        highlightColor: Colors.grey.shade100,
        child: ListTile(
          leading: CircleAvatar(
            radius: context.ww * 0.065,
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: context.ww * 0.4,
              height: 12,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(8),
              Container(
                width: context.ww * 0.8,
                height: 32,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.star),
              const Gap(8),
              Container(
                width: context.ww * 0.08,
                height: context.ww * 0.03,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
