import 'package:flutter/material.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';
import 'package:shimmer/shimmer.dart';

class StarredRepoShimmer extends StatelessWidget {
  const StarredRepoShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Shimmer.fromColors(
          baseColor: Colors.grey.shade200,
          highlightColor: Colors.grey.shade100,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 4,
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: context.ww * 0.065,
                ),
              ),
              Expanded(
                flex: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: context.ww * 0.4,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: context.ww * 0.6,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: context.ww,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                ),
              )
            ],
          )),
    );
  }
}