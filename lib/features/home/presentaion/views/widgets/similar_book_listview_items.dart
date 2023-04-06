import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListViewItem extends StatelessWidget {
  const SimilarBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(),
            )),
      ),
    );
  }
}
