import 'package:boiporo/Screens/ProfileScreen/profile_screen.dart';
import 'package:boiporo/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: SvgPicture.asset("assets/icons/menubar.svg",height: 35,)),
        // Text(
        //   "বই পড়ো - Popular eBooks",
        //   style: Theme.of(context)
        //       .textTheme
        //       .headlineMedium
        //       ?.copyWith(color: Theme.of(context).colorScheme.background),
        // ),
        InkWell(
          onTap: () {
            Get.to(() => const ProfileScreen());
          },
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Theme.of(context).colorScheme.background,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:
                    Image.network(authController.auth.currentUser!.photoURL!)),
          ),
        )
      ],
    );
  }
}
