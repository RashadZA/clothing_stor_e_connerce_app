import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/splash/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: AnimatedBuilder(
          animation: controller.scaleAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: controller.scaleAnimation.value,
              child: const Icon(Icons.flutter_dash, size: 150, color: primaryColor,),
            );
          },
        ),
      ),
    );
  }
}
