import 'package:boiporo/Components/back_button.dart';
import 'package:boiporo/Components/multiline_textformfield.dart';
import 'package:boiporo/Components/mytext_fromfield.dart';
import 'package:boiporo/config/colors.dart';
import 'package:boiporo/controller/book_controller.dart';
import 'package:boiporo/controller/pdf_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewBook extends StatelessWidget {
  const AddNewBook({super.key});

  @override
  Widget build(BuildContext context) {
    PdfController pdfController = Get.put(PdfController());
    BookController bookController = Get.put(BookController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const MyBackButton(),
                            Text(
                              "ADD NEW BOOK",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            bookController.pickImage();
                          },
                          child: Obx(() => Container(
                                width: 150,
                                height: 190,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                                child: Center(
                                  child: bookController.isImageUploading.value
                                      ? const CircularProgressIndicator(
                                          color: primaryColor,
                                        )
                                      : bookController.imageUrl.value == ""
                                          ? Image.asset(
                                              "assets/icons/addImage.png")
                                          : ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                bookController.imageUrl.value,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                  Row(
                    children: [
                      Expanded(
                        child: Obx(() => Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: bookController.pdfUrl.value == ""
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context)
                                          .colorScheme
                                          .background,
                                  borderRadius: BorderRadius.circular(10)),
                              child: bookController.isPdfUploading.value
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                        color: backgroundColor,
                                      ),
                                    )
                                  : bookController.pdfUrl.value == ""
                                      ? InkWell(
                                          onTap: () {
                                            bookController.pickPDF();
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  "assets/icons/upload.png"),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "Book PDF",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .background),
                                              )
                                            ],
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () {
                                            bookController.pdfUrl.value = "";
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(width: 20,height: 20,
                                                  "assets/icons/delete.png",),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "Delete pdf",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primary),
                                              )
                                            ],
                                          ),
                                        ),
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(Icons.upload_sharp,
                              //     color:
                              //         Theme.of(context).colorScheme.background),
                              Image.asset("assets/icons/upload.png"),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Book Audio",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                      hintText: "Book title",
                      icon: Icons.book,
                      controller: bookController.title),
                  const SizedBox(
                    height: 10,
                  ),
                  MultiLineTextFormField(
                      hintText: "Book Description",
                      controller: bookController.description),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                      hintText: "Author Name",
                      icon: Icons.person,
                      controller: bookController.author),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                      hintText: "About Author",
                      icon: Icons.person,
                      controller: bookController.abutAuthor),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                            isNumber: true,
                            hintText: "Price",
                            icon: Icons.currency_rupee,
                            controller: bookController.price),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MyTextFormField(
                            isNumber: true,
                            hintText: "Pages",
                            icon: Icons.book,
                            controller: bookController.pages),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                            hintText: "Language",
                            icon: Icons.language,
                            controller: bookController.language),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MyTextFormField(
                            hintText: "Audio Len",
                            icon: Icons.audiotrack,
                            controller: bookController.audioLen),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.close, color: Colors.red),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "CANCEL",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Obx(() => Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: bookController.isPostUploading.value
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                        color: backgroundColor,
                                      ),
                                    )
                                  : InkWell(
                                      onTap: () {
                                        bookController.createBook();
                                        // Get.to(() => const ProfileScreen());
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.upload_sharp,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .background),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "POST",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background),
                                          )
                                        ],
                                      ),
                                    ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
