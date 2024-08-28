// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:flutter_get_api_movie/app/modules/download/pages/download_screen.dart';
import 'package:flutter_get_api_movie/app/modules/fast%20laughs/pages/fast_laughs_screen.dart';
import 'package:flutter_get_api_movie/app/modules/game/pages/game_screen.dart';
import 'package:flutter_get_api_movie/app/modules/home/pages/home_screen.dart';
import 'package:flutter_get_api_movie/app/modules/landing%20page/pages/landing_page_screen.dart';
import 'package:flutter_get_api_movie/app/modules/login/controllers/login_binding.dart';
import 'package:flutter_get_api_movie/app/modules/login/pages/login_screen.dart';
import 'package:flutter_get_api_movie/app/modules/main/conttrollers/main_binding.dart';
import 'package:flutter_get_api_movie/app/modules/main/controllers%20movie/movie_main_binding.dart';
import 'package:flutter_get_api_movie/app/modules/main/pages/main_screen.dart';
import 'package:flutter_get_api_movie/app/modules/new%20and%20hot/pages/new_and_hot_screen.dart';
import 'package:flutter_get_api_movie/app/modules/profile/pages/profile_screen.dart';
import 'package:flutter_get_api_movie/app/modules/register/pages/register_screen.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final pages = [
    GetPage(
      name: AppRoutes.landingPage.name,
      page: () => const LandingPageScreen(),
    ),
    GetPage(
      name: AppRoutes.register.name,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: AppRoutes.downloadScreen.name,
      page: () => const DownloadScreen(),
    ),
    GetPage(
      name: AppRoutes.loginScreen.name,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.mainScreen.name,
      page: () => const MainScreen(),
      binding: MainBinding(),
      bindings: [
        MovieBinding(),
        LoginBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.profileScreen.name,
      page: () => const ProfileScreen(),
      binding: LoginBinding(),
    ),
  ];

  static Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppRoutes.homeScreen.name) {
      return GetPageRoute(
        settings: settings,
        routeName: AppRoutes.homeScreen.name,
        page: () => HomeScreen(),
        binding: LoginBinding(),
        transition: Transition.noTransition,
      );
    }
    if (settings.name == AppRoutes.gamesScreen.name) {
      return GetPageRoute(
        settings: settings,
        routeName: AppRoutes.gamesScreen.name,
        page: () => GameScreen(),
        binding: LoginBinding(),
        transition: Transition.noTransition,
      );
    }
    if (settings.name == AppRoutes.newAndHotScreen.name) {
      return GetPageRoute(
        settings: settings,
        routeName: AppRoutes.newAndHotScreen.name,
        page: () => const NewAndHotScreen(),
        binding: LoginBinding(),
        transition: Transition.noTransition,
      );
    }
    if (settings.name == AppRoutes.fastLaughsScreen.name) {
      return GetPageRoute(
        settings: settings,
        routeName: AppRoutes.fastLaughsScreen.name,
        page: () => const FastLaughsScreen(),
        binding: LoginBinding(),
        transition: Transition.noTransition,
      );
    }
    if (settings.name == AppRoutes.downloadScreen.name) {
      return GetPageRoute(
        settings: settings,
        routeName: AppRoutes.downloadScreen.name,
        page: () => const DownloadScreen(),
        // page: () => DownloadScreen(models: Get.arguments),
        binding: LoginBinding(),
        transition: Transition.noTransition,
      );
    }
    if (settings.name == AppRoutes.profileScreen.name) {
      return GetPageRoute(
        settings: settings,
        routeName: AppRoutes.profileScreen.name,
        page: () => ProfileScreen(models: Get.arguments),
        binding: LoginBinding(),
        transition: Transition.noTransition,
      );
    }
    return null;
  }
}
