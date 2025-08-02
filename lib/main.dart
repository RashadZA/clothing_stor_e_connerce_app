import 'package:clothing_stor_e_connerce_app/core/routes/app_pages.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]).then((_) {
  //   runApp(const MyApp());
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: "Clothing Store E Commerce App",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      getPages: AppPages.routes,
      initialBinding: BindingsX.initialBindigs(),
      theme: AppTheme.lightTheme,
      unknownRoute: AppPages.unknownRoute,
    );
  }
}
