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
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
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
                    height: 10,
                  ),
                  const Text("Sign Up"),
                  const SizedBox(
                    height: 20,
                  ),
                  CoreTextField(
                    hintText: "Name",
                    keyboardType: TextInputType.text,
                    controller: controller.nameTextEditController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreTextField(
                    hintText: "Email",
                    keyboardType: TextInputType.text,
                    controller: controller.emailTextEditController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreTextField(
                    hintText: "Password",
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: controller.passwordTextEditController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreButton(
                    onPressed: () => controller.alreadyHaveAnAccountOnPressedMethod(),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Already have an account",
                          style: TextStyle(color: primaryTextColor),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: redAccentColor,
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
                    height: 100,
                  ),
                  const Text("Or login with social account"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CoreButton(
                        onPressed: (){},
                        child: Container(
                          height: 64,
                          width: 92,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.facebook,
                            size: 40,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      CoreButton(
                        onPressed: (){},
                        child: Container(
                          height: 64,
                          width: 92,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.facebook,
                            size: 40,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
