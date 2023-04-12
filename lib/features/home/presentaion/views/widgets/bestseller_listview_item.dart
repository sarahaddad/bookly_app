import 'package:ebook/core/utils/app_roters.dart';
import 'package:ebook/core/utils/assets.dart';
import 'package:ebook/features/home/data/models/book_model/book_model.dart';
import 'package:ebook/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookdetailsViwe);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                    'https://img.freepik.com/premium-vector/system-software-update-upgrade-concept-loading-process-screen-vector-illustration_175838-2182.jpg?w=360'),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle30.copyWith(fontSize: 20),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        count: 0,
                        rating: bookModel.volumeInfo.maturityRating ?? '0',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
