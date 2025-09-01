import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_flat_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/core_text_field.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/sign_in_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends GetWidget<SignInScreenController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(()=> ListView(
            padding: const EdgeInsets.all(defaultPadding),
            children: [
              const SizedBox(
                height: 40,
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
                  "Sign In",
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
                  "Hi, Welcome back, you've been missed",
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
                titleText: "Email",
                hintText: "example@gmail.com",
                keyboardType: TextInputType.text,
                controller: controller.emailTextEditController,
                prefixIcon: Icons.email_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              CoreTextField(
                hintText: "Password",
                titleText: "Password",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: controller.obscureTextStatus.value,
                controller: controller.passwordTextEditController,
                prefixIcon: Icons.password_outlined,
                suffixIcon: CoreButton(
                  onPressed: ()=> controller.passwordFieldObscureStatusChangeMethod(),
                  child: Icon(
                    controller.obscureTextStatus.value ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CoreButton(
                onPressed: () => controller.forgotPasswordOnPressedMethod(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot your password?",
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
                onPressed: () => controller.signInOnPressedMethod(),
                text: "SIGN IN",
                isGradientBg: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CoreButton(
                onPressed: () => controller.createAccountOnPressedMethod(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Create account",
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
                height: 30,
              ),
              Center(
                child: Text(
                    "Or login with social account",
                  style: AppTextTheme.text16.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CoreButton(
                    child: Container(
                      height: 45,
                      width: 55,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.facebook,
                        size: 35,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  CoreButton(
                    child: Container(
                      height: 45,
                      width: 55,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.facebook,
                        size: 35,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          );
        },
      ),
    );
  }
}
