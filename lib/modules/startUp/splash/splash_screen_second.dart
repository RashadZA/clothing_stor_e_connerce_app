// import 'package:clothing_stor_e_connerce_app/modules/startUp/splash/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// class SplashScreenSecond extends StatelessWidget {
//   const SplashScreenSecond({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: 4), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (_) => const HomeScreen()),
//       );
//     });
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Lottie.asset(
//           'assets/animation/splashScreenAnimation.json',
//           width: 200,
//           height: 200,
//           repeat: false,
//         ),
//       ),
//     );
//   }
// }