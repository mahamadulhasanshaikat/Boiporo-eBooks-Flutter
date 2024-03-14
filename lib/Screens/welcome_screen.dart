import 'package:boiporo/Components/primary_button.dart';
import 'package:boiporo/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomeScreen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 550,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        "assets/images/book.png",
                        width: 380,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Boiporo - eBooks Store",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.background),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: Text(
                          "Here you can find best book for you and you can also read book and listens book ",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Disclaimer",
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(btnName: "LOGIN WITH GOOGLE",
                onTap: () {
              authController.loginWithEmail();
            }),
          )
        ],
      ),
    );
  }
}
