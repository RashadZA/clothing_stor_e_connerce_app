import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordScreenController extends GetxController{
  final TextEditingController passwordTextEditController = TextEditingController();
  final TextEditingController confirmPasswordTextEditController = TextEditingController();

  RxBool passwordObscureTextStatus = true.obs;
  RxBool confirmPasswordObscureTextStatus = true.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  Future<void> passwordFieldObscureStatusChangeMethod() async {
    passwordObscureTextStatus.value = !passwordObscureTextStatus.value;
    update();
  }

  Future<void> confirmPasswordFieldObscureStatusChangeMethod() async {
    confirmPasswordObscureTextStatus.value = !confirmPasswordObscureTextStatus.value;
    update();
  }

  /// Create New Password button on pressed method
  Future<void> createNewPasswordOnPressedMethod() async {
    Get.offAllNamed(Routes.signInScreen);
  }

  /// Sign In  button on pressed method
  Future<void> signInOnPressedMethod() async {
    Get.offNamed(Routes.signInScreen);
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }
}