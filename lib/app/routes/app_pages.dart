import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import 'package:bookspace/app/modules/auth/bindings/auth_binding.dart';
import 'package:bookspace/app/modules/auth/views/auth_view.dart';
import 'package:bookspace/app/modules/home/bindings/home_binding.dart';
import 'package:bookspace/app/modules/home/views/home_view.dart';
import 'package:bookspace/app/modules/splash/bindings/splash_binding.dart';
import 'package:bookspace/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      //curve: Curves.easeIn,
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
      // curve: Curves.easeIn,
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
      // curve: Curves.easeIn,
    ),
  ];
}
