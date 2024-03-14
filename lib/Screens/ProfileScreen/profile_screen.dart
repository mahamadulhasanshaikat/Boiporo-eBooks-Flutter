import 'package:boiporo/Components/back_button.dart';
import 'package:boiporo/Components/book_tile.dart';
import 'package:boiporo/Screens/AddNewBook/addnew_book.dart';
import 'package:boiporo/Screens/BookDetails/book_details.dart';
import 'package:boiporo/controller/auth_controller.dart';
import 'package:boiporo/controller/book_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    BookController bookController = Get.put(BookController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddNewBook());
        },
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.background),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                color: Theme.of(context).colorScheme.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const MyBackButton(),
                              // Text(
                              //   "Profile",
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .bodyLarge
                              //       ?.copyWith(
                              //           color: Theme.of(context)
                              //               .colorScheme
                              //               .background),
                              // ),
                              IconButton(
                                  onPressed: () {
                                    authController.signOut();
                                  },
                                  icon: Icon(Icons.logout,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background))
                            ],
                          ),
                          const SizedBox(
                            height: 5,
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
                                width: 130,
                                height: 130,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.network(
                                      "${authController.auth.currentUser!.photoURL}",
                                      fit: BoxFit.cover,
                                    ))
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${authController.auth.currentUser!.displayName}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
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
                                      .onPrimaryContainer.withOpacity(0.7),
                                ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                        ],
                      ),
                    ),

                  ],

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Your Books",
                            style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => Column(
                        children: bookController.currentUserBooks
                            .map((e) => BookTile(
                                  ontap: () {
                                    Get.to(() => BookDetails(book: e));
                                  },
                                  title: e.title!,
                                  coverUrl: e.coverUrl!,
                                  author: e.author!,
                                  price: e.price!,
                                  rating: e.rating!,
                                  totalRating: "12",
                                ))
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
