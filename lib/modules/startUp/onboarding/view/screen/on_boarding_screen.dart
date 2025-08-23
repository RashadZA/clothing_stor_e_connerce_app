import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/custom_text_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/onboarding/controller/on_boarding_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends GetWidget<OnBoardingScreenController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height,
              child: PageView.builder(
                controller: controller.pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.screens.length,
                onPageChanged: (index) {
                  controller.currentScreenIndex.value = index;
                },
                itemBuilder: (context, index) {
                  return controller.screens[index];
                },
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: CustomTextButton(
                width: 60,
                height: 40,
                onPressed: () {
                  Get.offNamed(Routes.signInScreen);
                  // Get.snackbar(
                  //   'Completed!',
                  //   'Onboarding process finished',
                  //   snackPosition: SnackPosition.BOTTOM,
                  //   backgroundColor: Colors.green,
                  //   colorText: Colors.white,
                  // );
                },
                buttonText: "Skip",
                buttonColor: primaryColor,
                buttonTextStyle: AppTextTheme.text18.copyWith(
                  color: whiteColor,
                ),
                isButtonIsTapped: false,
              ),
            ),
            Positioned(
              bottom: 80,
              child: SizedBox(
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Previous Button
                    AnimatedOpacity(
                      opacity: controller.currentScreenIndex.value > 0 ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: controller.currentScreenIndex.value > 0 ? 100 : 0,
                        child: IconCustomButton(
                          onPressed: controller.currentScreenIndex.value > 0 ? controller.goToPreviousScreen : null,
                          iconData: Icons.arrow_back,
                          iconColor: whiteColor,
                          backgroundColor: primaryColor,
                        ),
                      ),
                    ),

                    // Page Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(controller.screens.length, (index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 8,
                          width: controller.currentScreenIndex.value == index ? 24 : 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: controller.currentScreenIndex.value == index
                                ? primaryColor
                                : primaryColor.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      }),
                    ),

                    // Next/Finish Button
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: controller.currentScreenIndex.value < controller.screens.length - 1 ? IconCustomButton(
                        onPressed: controller.goToNextScreen,
                        iconData: Icons.arrow_forward,
                        iconColor: whiteColor,
                        backgroundColor: primaryColor,
                      ) : CustomTextButton(
                        width: 100,
                        height: 40,
                        onPressed: () {
                          Get.offNamed(Routes.signInScreen);
                          // Get.snackbar(
                          //   'Completed!',
                          //   'Onboarding process finished',
                          //   snackPosition: SnackPosition.BOTTOM,
                          //   backgroundColor: Colors.green,
                          //   colorText: Colors.white,
                          // );
                        },
                        buttonText: "Finished",
                        buttonColor: primaryColor,
                        buttonTextStyle: AppTextTheme.text18.copyWith(
                          color: whiteColor,
                        ),
                        isButtonIsTapped: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

