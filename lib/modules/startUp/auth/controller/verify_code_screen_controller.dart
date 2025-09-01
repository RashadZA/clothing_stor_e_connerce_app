import 'dart:async';
import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class VerifyCodeScreenController extends GetxController {

  final TextEditingController verifyCodeFieldTextEditController = TextEditingController();
  final TextEditingController verifyCodeFieldOneTextEditController = TextEditingController();
  final TextEditingController verifyCodeFieldSecondTextEditController = TextEditingController();
  final TextEditingController verifyCodeFieldThirdTextEditController = TextEditingController();
  final TextEditingController verifyCodeFieldFourthTextEditController = TextEditingController();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    verifyCodeFieldOneTextEditController.clear();
    verifyCodeFieldSecondTextEditController.clear();
    verifyCodeFieldThirdTextEditController.clear();
    verifyCodeFieldFourthTextEditController.clear();
  }
  RxString currentText = ''.obs;
  RxBool isLoading = false.obs;

  void onPinChanged(String value) {
    currentText.value = value;
  }

  Future<void> verifyCode(String code) async {
    if (code.length != 4) return;

    isLoading.value = true;

    // Simulate API call delay
    await Future.delayed(Duration(seconds: 2));

    isLoading.value = false;

    if (code == '1234') { // Replace with your actual verification logic
      Get.snackbar(
        'Success',
        'Verification successful!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      // Navigate to next screen
      // Get.offAll(() => NextScreen());
    } else {
      Get.snackbar(
        'Error',
        'Invalid code. Please try again.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void resendCode() {
    verifyCodeFieldTextEditController.clear();
    currentText.value = '';

    Get.snackbar(
      'Code Sent',
      'New verification code has been sent!',
      backgroundColor: Colors.blue,
      colorText: Colors.white,
    );
  }


  /// "Already have an account" Text button on pressed method
  Future<void> alreadyHaveAnAccountOnPressedMethod() async {
    Get.offNamed(Routes.signInScreen);
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}