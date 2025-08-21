import 'dart:async';
import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpScreenController extends GetxController {

  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController emailTextEditController = TextEditingController();
  final TextEditingController passwordTextEditController = TextEditingController();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  /// Sign Out  button on pressed method
  Future<void> signUpOnPressedMethod() async {
    // Get.offAllNamed(Routes.mainScreen);
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