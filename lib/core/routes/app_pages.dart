import 'package:clothing_stor_e_connerce_app/core/API/service/api_repositories.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/forgot_password_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/new_password_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/sign_in_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/sign_up_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/controller/verify_code_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/view/forgot_password.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/view/new_password_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/view/sign_in_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/view/signup_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/auth/view/verify_code_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/onboarding/view/screen/on_boarding_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/onboarding/controller/on_boarding_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/splash/splash_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/splash/splash_screen_controller.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/unknown/unknown_route_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/welcome/view/welcome_screen.dart';
import 'package:clothing_stor_e_connerce_app/modules/startUp/welcome/controller/welcome_screen_controller.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {

  static final unknownRoute = GetPage(
    name: Routes.unknown404,
    page: () => const UnknownRouteScreen(),
  );
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<SplashScreenController>(() => SplashScreenController()),
      ),
    ),
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<WelcomeScreenController>(() => WelcomeScreenController()),
      ),
    ),
    GetPage(
      name: Routes.onBoardingScreen,
      page: () => const OnBoardingScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<OnBoardingScreenController>(() => OnBoardingScreenController()),
      ),
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SignInScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<SignInScreenController>(() => SignInScreenController()),
      ),
    ),
    GetPage(
      name: Routes.forgotScreen,
      page: () => const ForgotPasswordScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<ForgotPasswordScreenController>(() => ForgotPasswordScreenController()),
      ),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<SignUpScreenController>(() => SignUpScreenController()),
      ),
    ),
    GetPage(
      name: Routes.verifyCodeScreen,
      page: () => const VerifyCodeScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<VerifyCodeScreenController>(() => VerifyCodeScreenController()),
      ),
    ),
    GetPage(
      name: Routes.newPasswordScreen,
      page: () => const NewPasswordScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<NewPasswordScreenController>(() => NewPasswordScreenController()),
      ),
    ),
    // GetPage(
    //   name: Routes.mainScreen,
    //   page: () => const MainScreen(),
    //   binding: BindingsBuilder(
    //     () => Get.lazyPut<MainScreenController>(() => MainScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.homeScreen,
    //   page: () => const HomeScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<HomeScreenController>(() => HomeScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.shopScreen,
    //   page: () => const ShopScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<ShopScreenController>(() => ShopScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.bagScreen,
    //   page: () => const BagScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<BagScreenController>(() => BagScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.favoritesScreen,
    //   page: () => const FavoritesScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<FavoritesScreenController>(() => FavoritesScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.profileScreen,
    //   page: () => const ProfileScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<ProfileScreenController>(() => ProfileScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.myOrdersScreen,
    //   page: () => const MyOrdersScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<MyOrdersScreenController>(() => MyOrdersScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.orderDetailsScreen,
    //   page: () => const OrderDetailsScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<OrderDetailsScreenController>(() => OrderDetailsScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.settingScreen,
    //   page: () => const SettingScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<SettingScreenController>(() => SettingScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.checkOutScreen,
    //   page: () => const CheckOutScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<CheckOutScreenController>(() => CheckOutScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.shippingAddressesScreen,
    //   page: () => const ShippingAddressesScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<ShippingAddressesScreenController>(() => ShippingAddressesScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.addShippingAddressesScreen,
    //   page: () => const AddShippingAddressScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<AddShippingAddresseScreenController>(() => AddShippingAddresseScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.promoCodesScreen,
    //   page: () => const PromoCodeScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<PromoCodeScreenController>(() => PromoCodeScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.paymentMethodScreen,
    //   page: () => const PaymentMethodScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<PaymentMethodScreenController>(() => PaymentMethodScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.productDetailsScreen,
    //   page: () => const ProductDetailsScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<ProductDetailsScreenController>(() => ProductDetailsScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.homeSeeAllItemsScreen,
    //   page: () => const HomeSeeAllItemsScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<HomeSeeAllItemsScreenController>(() => HomeSeeAllItemsScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.productRatingAndReviewScreen,
    //   page: () => const ProductRatingAndReviewScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<ProductRatingAndReviewScreenController>(() => ProductRatingAndReviewScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.shopCatalogScreen,
    //   page: () => const ShopCatalogScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<ShopCatalogScreenController>(() => ShopCatalogScreenController()),
    //   ),
    // ),
    // GetPage(
    //   name: Routes.filterScreen,
    //   page: () => const FilterScreen(),
    //   binding: BindingsBuilder(
    //         () => Get.lazyPut<FilterScreenController>(() => FilterScreenController()),
    //   ),
    // ),
  ];
}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
      // Get.lazyPut<HomeScreenController>(() => HomeScreenController(), fenix: true);
      // Get.lazyPut<ShopScreenController>(() => ShopScreenController(), fenix: true);
      // Get.lazyPut<BagScreenController>(() => BagScreenController(), fenix: true);
      // Get.lazyPut<FavoritesScreenController>(() => FavoritesScreenController(), fenix: true);
      // Get.lazyPut<ProfileScreenController>(() => ProfileScreenController(), fenix: true);
    });
  }
}
