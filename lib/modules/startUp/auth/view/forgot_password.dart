import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/forgot_password_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_flat_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/core_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordScreenController> {
  const ForgotPasswordScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: scaffoldAppBarColor,
          title: Text(
            "Forgot Password",
            style: AppTextTheme.text24,
          ),
          centerTitle: true,
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return SingleChildScrollView(
              padding:  const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Icon(
                    Icons.flutter_dash,
                    size: 200,
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Please, enter your email address. You will receive a link to create a new password via email.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreTextField(
                    hintText: "Email",
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: controller.emailTextEditController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreFlatButton(
                    onPressed: () => Get.back(),
                    text: "SEND",
                    isGradientBg: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
