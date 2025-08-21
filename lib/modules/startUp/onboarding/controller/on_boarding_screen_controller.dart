import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/onboarding/view/widgets/on_boarding_screen_first_widget.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/onboarding/view/widgets/on_boarding_screen_second_widget.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/onboarding/view/widgets/on_boarding_screen_third_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreenController extends GetxController{

  final PageController pageController = PageController();

  RxInt currentScreenIndex = 0.obs;

  RxBool screenDataProcessing = false.obs;
  RxBool signInTextHoverStatus  = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    precacheImage(const AssetImage(AppImages.welcomeScreenImageOne), Get.context!);
    precacheImage(const AssetImage(AppImages.welcomeScreenImageTwo), Get.context!);
    precacheImage(const AssetImage(AppImages.welcomeScreenImageThree), Get.context!);
    // screenDataProcessing.value = true;
    // await preloadImages();
    // screenDataProcessing.value = false;
  }

  Future<void> preloadImages() async {
    await Future.wait([
      precacheImage(const AssetImage(AppImages.welcomeScreenImageOne), Get.context!),
      precacheImage(const AssetImage(AppImages.welcomeScreenImageTwo), Get.context!),
      precacheImage(const AssetImage(AppImages.welcomeScreenImageThree), Get.context!),
    ]);
  }

  final List<Widget> screens = [
    OnBoardingScreenFirstWidget(),
    OnBoardingScreenSecondWidget(),
    OnBoardingScreenThirdWidget(),
  ];

  void goToNextScreen() {
    if (currentScreenIndex.value < screens.length - 1) {
      currentScreenIndex.value++;
      pageController.animateToPage(
        currentScreenIndex.value,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToPreviousScreen() {
    if (currentScreenIndex.value > 0) {
      currentScreenIndex.value--;
      pageController.animateToPage(
        currentScreenIndex.value,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipToEnd() {
    currentScreenIndex.value = screens.length - 1;
    pageController.animateToPage(
      currentScreenIndex.value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

}