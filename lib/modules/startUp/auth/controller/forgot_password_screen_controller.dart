import 'dart:async';
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

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}