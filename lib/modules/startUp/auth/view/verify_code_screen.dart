import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_button.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_flat_button.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/verify_code_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodeScreen extends GetWidget<VerifyCodeScreenController> {
  const VerifyCodeScreen({super.key});


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
                  "Verify Code",
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
                "Please, enter the code we just sent to email",
                textAlign: TextAlign.center,
                style: AppTextTheme.text16.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
              Text(
                "example@gmail.com",
                textAlign: TextAlign.center,
                style: AppTextTheme.text16.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20,),
                child: PinCodeTextField(
                  appContext: Get.context!,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    borderRadius: BorderRadius.circular(50),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: Colors.transparent,
                    activeColor: primaryColor,
                    selectedColor: primaryColor.withValues(alpha: 2),
                    selectedFillColor: primaryColor.withValues(alpha: 0.5),
                    inactiveColor: secondaryColor,
                    inactiveFillColor: secondaryColor.withValues(alpha: 0.5),
                    // shape: PinCodeFieldShape.box,
                    // borderRadius: BorderRadius.circular(25),
                    // fieldHeight: 50,
                    // fieldWidth: 50,
                    // activeFillColor: Colors.white,
                    // activeColor: Colors.blue,
                    // selectedColor: Colors.blue,
                    // inactiveColor: Colors.grey,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  controller: controller.verifyCodeFieldTextEditController,
                  onCompleted: (v) {
                    controller.verifyCode(v);
                  },
                  onChanged: (value) {
                    controller.onPinChanged(value);
                  },
                ),
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
              const SizedBox(
                height: 15,
              ),
              CoreFlatButton(
                onPressed: () => Get.toNamed(Routes.newPasswordScreen),
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
