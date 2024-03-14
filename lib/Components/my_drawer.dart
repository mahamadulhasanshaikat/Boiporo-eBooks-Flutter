
import 'package:boiporo/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                color: Theme.of(context).colorScheme.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background)),
                            child: SizedBox(
                                width: 90,
                                height: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.network(
                                      "${authController.auth.currentUser!.photoURL}",
                                      fit: BoxFit.cover,
                                    ))),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${authController.auth.currentUser!.displayName}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                          ),
                          Text(
                            "${authController.auth.currentUser!.email}",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer
                                      .withOpacity(0.7),
                                ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              ListTile(
                title: Text(
                  'E - BOOk',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1.5,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Version 1.0.0.0",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Developer By MHS CO. LTD",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "© 2024 MHS CO. LTD All Rights Reserved",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.black),
                  ),


                ],
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
    ;
  }
}
