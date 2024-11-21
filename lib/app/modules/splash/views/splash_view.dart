import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reels_app/app/modules/splash/inner_widget/splash_animation.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return SplashAnimation();
  }
}
