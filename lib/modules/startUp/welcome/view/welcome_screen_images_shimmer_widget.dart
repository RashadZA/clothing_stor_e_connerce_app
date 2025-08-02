import 'package:clothing_stor_e_connerce_app/core/components/widgets/shimmer/shimmer_container_widget.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class WelcomeScreenImagesShimmerWidget extends StatelessWidget {
  const WelcomeScreenImagesShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighlightColor,
      enabled: true,
      child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShimmerContainerWidget(
              width: Get.width < 350 ? 140 : 170,
              height: 420,
              radius: 75,
            ),
            Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShimmerContainerWidget(
                  width: Get.width < 350 ? 140 : 170,
                  height: 400 - (Get.width < 350 ? 140 : 170),
                  radius: 75,
                ),
                ShimmerContainerWidget(
                  width: Get.width < 350 ? 140 : 170,
                  height: Get.width < 350 ? 140 : 170,
                  radius: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
