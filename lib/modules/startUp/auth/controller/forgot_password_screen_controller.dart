import 'dart:async';
import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgotPasswordScreenController extends GetxController {

  final TextEditingController emailTextEditController = TextEditingController();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}


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