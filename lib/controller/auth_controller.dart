import 'package:boiporo/Screens/HomeScreen/home_screen.dart';
import 'package:boiporo/Screens/welcome_screen.dart';
import 'package:boiporo/config/messages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  final auth = FirebaseAuth.instance;

  void loginWithEmail() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      //Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential);

      successMessage("Login Success");
      Get.offAll(() => const HomeScreen());
    } catch (ex) {
      print(ex);
      errorMessage("Error ! Try Again");
    }
    isLoading.value = false;
  }

  void signOut() async {
    await auth.signOut();
    successMessage("Logout");
    Get.offAll(() => const WelcomeScreen());
  }
}
