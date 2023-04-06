import 'package:ebook/core/utils/styles.dart';
import 'package:ebook/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:ebook/features/home/presentaion/views/widgets/similar_book_listview_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_action_button.dart';
import 'custom_book_image.dart';
import 'customappbarbookdetails.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    //custom Scroll view used to scroll the screen and fill the remain of the screen, singlechild cantbe use becuz expandede
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: const [
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    //50
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomAppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle20.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookActionButton(),
      ],
    );
  }
}

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can Also Like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListViewItem(),
      ],
    );
  }
}
