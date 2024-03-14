import 'package:boiporo/controller/book_controller.dart';
import 'package:boiporo/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SplashController splashController = Get.put(SplashController());
    // BookController bookController = Get.put(BookController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Lottie.asset("assets/animations/splashAnimation.json"),
      ),
    );
  }
}
