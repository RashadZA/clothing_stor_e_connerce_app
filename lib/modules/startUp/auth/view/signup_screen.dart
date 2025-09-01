import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/check_box_custom_widget.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/sign_up_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_flat_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/core_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetWidget<SignUpScreenController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(()=> SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Create Account",
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
                  "Fill your information below or register with your social account.",
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
                  titleText: "Name",
                  hintText: "Name",
                  keyboardType: TextInputType.text,
                  controller: controller.nameTextEditController,
                ),
                const SizedBox(
                  height: 10,
                ),
                CoreTextField(
                  titleText: "Email",
                  hintText: "Email",
                  keyboardType: TextInputType.text,
                  controller: controller.emailTextEditController,
                ),
                const SizedBox(
                  height: 10,
                ),
                CoreTextField(
                  hintText: "Password",
                  titleText: "Password",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  obscureText: controller.obscureTextStatus.value,
                  controller: controller.passwordTextEditController,
                  suffixIcon: CoreButton(
                    onPressed: ()=> controller.passwordFieldObscureStatusChangeMethod(),
                    child: Icon(
                      controller.obscureTextStatus.value ? Icons.visibility_off : Icons.visibility,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CheckBoxCustomWidget(
                      onPressed: () => controller.agreeWithTermAndConditionStatusChangeMethod(),
                      isSelected: controller.agreeWithTermAndConditionStatus.value,
                    ),
                    Flexible(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "Agree with ",
                            style: AppTextTheme.text16.copyWith(
                              // color: primaryColor,
                              // fontWeight: FontWeight.w600,
                              overflow: TextOverflow.visible,
                            ),
                            children: [
                              TextSpan(
                                text: "Terms & Condition",
                                style: AppTextTheme.text16.copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                CoreButton(
                  onPressed: () => controller.alreadyHaveAnAccountOnPressedMethod(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Already have an account",
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
                  height: 10,
                ),
                CoreFlatButton(
                  onPressed: ()=> controller.signUpOnPressedMethod(),
                  text: "SIGN UP",
                  isGradientBg: true,
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
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconCustomButton(
                      onPressed: (){},
                      iconData: Icons.facebook,
                      iconColor: primaryColor,
                      iconSize: 35,
                      // backgroundColor: primaryColor,
                    ),
                    IconCustomButton(
                      onPressed: (){},
                      iconData: Icons.facebook,
                      iconColor: primaryColor,
                      iconSize: 35,
                      // backgroundColor: primaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),);
        },
      ),
    );
  }
}
