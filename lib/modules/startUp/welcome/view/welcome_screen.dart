import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/custom_text_button.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/welcome/controller/welcome_screen_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends GetWidget<WelcomeScreenController> {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context,orientation)=> Scaffold(
        body: Obx(()=>Container(
          width: Get.width,
          height: Get.height,
          color: secondaryColor,
          child: ListView(
            padding: EdgeInsets.only(left: 15, right: 15,top: 0,bottom: 50),
            children: [
              SizedBox(height: Get.height * 0.12,),
              Row(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width < 350 ? 140 : 170,
                    height: 420,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(75),
                      image: DecorationImage(
                        image: AssetImage(AppImages.welcomeScreenImageOne),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    spacing: 15,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Get.width < 350 ? 140 : 170,
                        height: 400 - (Get.width < 350 ? 140 : 170),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(75),
                          image: DecorationImage(
                            image: AssetImage(AppImages.welcomeScreenImageTwo),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: Get.width < 350 ? 140 : 170,
                        height: Get.width < 350 ? 140 : 170,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(AppImages.welcomeScreenImageThree),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "The Fashion App That Makes You Look Best",
                textAlign: TextAlign.center,
                style: AppTextTheme.text24.copyWith(
                  overflow: TextOverflow.visible,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "LOrem ipsum dolor sit amet, consectetur adipiscing elit, sed do wiusmod tempor incididunt",
                textAlign: TextAlign.center,
                style: AppTextTheme.text15.copyWith(
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextButton(
                width: 300,
                onPressed: (){},
                buttonText: "Lets's Get Started",
                buttonColor: greenColor,
                isButtonIsTapped: false,
              ),
              const SizedBox(
                height: 15,
              ),
              MouseRegion(
                onEnter: (_)=> controller.changeSignInTextHoverStatus(true),
                onExit: (_)=> controller.changeSignInTextHoverStatus(false),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: AppTextTheme.text16,
                      children: [
                        TextSpan(
                          text: "Sign In",
                          style: AppTextTheme.text16.copyWith(
                            color: controller.signInTextHoverStatus.value ? primaryColor.withValues(alpha: 0.9) : primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {},
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),),
      ),
    );
  }
}
