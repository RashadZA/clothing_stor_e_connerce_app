import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/icon_custom_button.dart';
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
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 50, bottom: 20),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconCustomButton(
                  onPressed: () => Get.back(),
                  iconData: Icons.arrow_back,
                  iconColor: primaryColor,
                  iconSize: 35,
                  // backgroundColor: primaryColor,
                ),
              ),
              const Icon(
                Icons.flutter_dash,
                size: 120,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Forgot Password",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text24.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please, enter your email address. You will receive a link to create a new password via email.",
                textAlign: TextAlign.center,
                style: AppTextTheme.text16.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CoreTextField(
                hintText: "Email",
                titleText: "Email",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                controller: controller.emailTextEditController,
              ),
              const SizedBox(
                height: 10,
              ),
              CoreButton(
                onPressed: () => controller.alreadyHaveAnAccountOnPressedMethod(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Sign In",
                      style: AppTextTheme.text16.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CoreFlatButton(
                onPressed: () => controller.sendButtonOnPressedMethod(),
                text: "SEND",
                isGradientBg: true,
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          );
        },
      ),
    );
  }
}
