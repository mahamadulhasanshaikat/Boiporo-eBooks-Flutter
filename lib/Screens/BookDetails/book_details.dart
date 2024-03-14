import 'package:boiporo/Screens/BookDetails/book_action_btn.dart';
import 'package:boiporo/Screens/BookDetails/header_widget.dart';
import 'package:boiporo/config/colors.dart';
import 'package:boiporo/models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;
  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: primaryColor,
              child: Row(
                children: [
                  Expanded(
                    child: BookDetailsHeader(
                        coverUrl: book.coverUrl!,
                        title: book.title!,
                        author: book.author!,
                        description: book.description!,
                        rating: book.rating!,
                        pages: book.pages.toString(),
                        language: book.language!,
                        audioLen: book.audioLen!),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "About book",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                         book.description! ,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "About Author",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          book.aboutAuthor! ,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                    BookActionBtn(bookUrl: book.bookurl!,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
