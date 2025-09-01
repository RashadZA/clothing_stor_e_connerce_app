import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_flat_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/core_text_field.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/new_password_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordScreen extends GetWidget<NewPasswordScreenController> {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(()=> ListView(
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
              Center(
                child: const Icon(
                  Icons.flutter_dash,
                  size: 120,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "New Password",
                  style: AppTextTheme.text24.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Hi, Your new password must be different from previously used passwords",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text16.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CoreTextField(
                hintText: "Password",
                titleText: "Password",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: controller.passwordObscureTextStatus.value,
                controller: controller.passwordTextEditController,
                prefixIcon: Icons.password_outlined,
                suffixIcon: CoreButton(
                  onPressed: ()=> controller.passwordFieldObscureStatusChangeMethod(),
                  child: Icon(
                    controller.passwordObscureTextStatus.value ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CoreTextField(
                hintText: "Confirm Password",
                titleText: "Confirm Password",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: controller.confirmPasswordObscureTextStatus.value,
                controller: controller.confirmPasswordTextEditController,
                prefixIcon: Icons.password_outlined,
                suffixIcon: CoreButton(
                  onPressed: ()=> controller.confirmPasswordFieldObscureStatusChangeMethod(),
                  child: Icon(
                    controller.confirmPasswordObscureTextStatus.value ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CoreFlatButton(
                onPressed: () => controller.createNewPasswordOnPressedMethod(),
                text: "Create New Password",
                isGradientBg: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CoreButton(
                onPressed: () => controller.signInOnPressedMethod(),
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
            ],
          ),
          );
        },
      ),
    );
  }
}
