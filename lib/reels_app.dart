import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reels_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:reels_app/app/routes/app_pages.dart';

class ReelsApp extends StatelessWidget {
  const ReelsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reels App',
      defaultTransition: Transition.noTransition,
      initialRoute: Routes.SPLASH,
      initialBinding: SplashBinding(),
      getPages: AppPages.routes,
    );
  }
}