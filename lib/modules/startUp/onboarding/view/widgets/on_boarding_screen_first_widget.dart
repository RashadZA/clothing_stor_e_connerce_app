import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreenFirstWidget extends StatelessWidget {
  const OnBoardingScreenFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        color: secondaryColor,
        image: DecorationImage(
          image: AssetImage(AppImages.welcomeScreenImageOne),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: Get.width,
            height: Get.height > 400 ? 400 : 350,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: secondaryColor.withValues(alpha: 0.5),
                  spreadRadius:  0.5,
                  blurRadius: 0.5,
                  offset: const Offset(0, 0.5),
                ),
                BoxShadow(
                  color: secondaryColor.withValues(alpha: 0.5),
                  spreadRadius:  1,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Seamless ",
                      style: AppTextTheme.text26.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: "Shopping Experience",
                          style: AppTextTheme.text26.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "LOrem ipsum dolor sit amet, consectetur adipiscing elit, sed do wiusmod tempor incididunt",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text18.copyWith(
                    color: primaryTextColor.withValues(alpha: 0.5),
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.visible,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}