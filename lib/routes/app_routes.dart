import 'package:flutter/material.dart';
import 'package:student_hub_app/presentation/splash_screen/splash_screen.dart';
import 'package:student_hub_app/presentation/intro_two_screen/intro_two_screen.dart';
import 'package:student_hub_app/presentation/intro_three_screen/intro_three_screen.dart';
import 'package:student_hub_app/presentation/login_screen/login_screen.dart';
import 'package:student_hub_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:student_hub_app/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:student_hub_app/presentation/not_saved_screen/not_saved_screen.dart';
import 'package:student_hub_app/presentation/results_screen/results_screen.dart';
import 'package:student_hub_app/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:student_hub_app/presentation/product_detail_one_screen/product_detail_one_screen.dart';
import 'package:student_hub_app/presentation/not_found_screen/not_found_screen.dart';
import 'package:student_hub_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String introTwoScreen = '/intro_two_screen';

  static const String introThreeScreen = '/intro_three_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String profilePage = '/profile_page';

  static const String settingsPage = '/settings_page';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String notSavedScreen = '/not_saved_screen';

  static const String resultsScreen = '/results_screen';

  static const String productDetailScreen = '/product_detail_screen';

  static const String productDetailOneScreen = '/product_detail_one_screen';

  static const String notFoundScreen = '/not_found_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        introTwoScreen: IntroTwoScreen.builder,
        introThreeScreen: IntroThreeScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpScreen: SignUpScreen.builder,
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        notSavedScreen: NotSavedScreen.builder,
        resultsScreen: ResultsScreen.builder,
        productDetailScreen: ProductDetailScreen.builder,
        productDetailOneScreen: ProductDetailOneScreen.builder,
        notFoundScreen: NotFoundScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
