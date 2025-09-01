import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:get/get.dart';

class WelcomeScreenController extends GetxController{

  RxBool screenDataProcessing = false.obs;
  RxBool signInTextHoverStatus  = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    screenDataProcessing.value = true;
    await preloadImages();
    screenDataProcessing.value = false;
  }

  Future<void> preloadImages() async {
    // await Future.wait([
    //   precacheImage(const AssetImage(AppImages.welcomeScreenImageOne), Get.context!),
    //   precacheImage(const AssetImage(AppImages.welcomeScreenImageTwo), Get.context!),
    //   precacheImage(const AssetImage(AppImages.welcomeScreenImageThree), Get.context!),
    // ]);
  }

  Future<void> letsGetStartedButtonOnPressedMethod() async {
    Get.offAllNamed(Routes.onBoardingScreen);
    update();
  }

  Future<void> changeSignInTextHoverStatus(bool status) async {
    signInTextHoverStatus.value = status;
    update();
  }

  Future<void> signInButtonOnPressedMethod() async {
    Get.offAllNamed(Routes.signInScreen);
    update();
  }
}