import 'package:boiporo/Screens/HomeScreen/home_screen.dart';
import 'package:boiporo/Screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final auth = FirebaseAuth.instance;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splashController();
  }

  void splashController() {
    Future.delayed(const Duration(seconds: 4), () {
      if (auth.currentUser != null) {
        Get.offAll(() => const HomeScreen());
      } else {
        Get.offAll(() => const WelcomeScreen());
      }
    });
  }
}
