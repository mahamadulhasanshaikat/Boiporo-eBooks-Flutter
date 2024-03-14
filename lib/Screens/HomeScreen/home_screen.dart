import 'package:boiporo/Components/book_card.dart';
import 'package:boiporo/Components/book_tile.dart';
import 'package:boiporo/Components/my_drawer.dart';
import 'package:boiporo/Screens/BookDetails/book_details.dart';
import 'package:boiporo/Screens/HomeScreen/Widgets/app_bar.dart';
import 'package:boiporo/Screens/HomeScreen/Widgets/category_widget.dart';
import 'package:boiporo/Screens/HomeScreen/Widgets/search_bar.dart';
import 'package:boiporo/controller/auth_controller.dart';
import 'package:boiporo/controller/book_controller.dart';
import 'package:boiporo/models/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    BookController bookController = Get.put(BookController());
    bookController.getUserBook();
    return Scaffold(
     drawer: const MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Theme.of(context).colorScheme.primary,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const HomeAppBar(),
                          Column(
                            children: [
                              Text(
                                "Hey Books Lover✌️",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
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
                            ],
                          ),
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          // Row(
                          //   children: [
                          //     Flexible(
                          //       child: Text(
                          //         "Time to read book and enhance your knowledge",
                          //         style: Theme.of(context)
                          //             .textTheme
                          //             .labelSmall
                          //             ?.copyWith(
                          //                 color: Theme.of(context)
                          //                     .colorScheme
                          //                     .background),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          // SearchBar..........................>>>>>
                          const MySearchBar(),
                          const SizedBox(
                            height: 15,
                          ),

                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map((e) => CategoryWidget(
                                      iconPath: e["icon"]!,
                                      btnName: e["lebel"]!))
                                  .toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Trending",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(() => Row(
                            children: bookController.bookData
                                .map((e) => BookCard(
                                      title: e.title!,
                                      coverUrl: e.coverUrl!,
                                      onTap: () {
                                        Get.to(() => BookDetails(
                                              book: e,
                                            ));
                                      },
                                    ))
                                .toList(),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 2,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    Row(
                      children: [
                        Text(
                          "Your Interests",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(() => Column(
                          children: bookController.bookData
                              .map(
                                (e) => BookTile(
                                  ontap: () {
                                    Get.to(() => BookDetails(book: e));
                                  },
                                  title: e.title!,
                                  coverUrl: e.coverUrl!,
                                  author: e.author!,
                                  price: e.price!,
                                  rating: e.rating!,
                                  totalRating: "12",
                                ),
                              )
                              .toList(),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
