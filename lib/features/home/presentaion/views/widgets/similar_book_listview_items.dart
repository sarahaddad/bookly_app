import 'package:ebook/core/widgets/custom_progress_indicator.dart';
import 'package:ebook/features/home/presentaion/managers/newest_books_cubit/newest_books_cubit.dart';
import 'package:ebook/features/home/presentaion/managers/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_roters.dart';
import 'custom_book_image.dart';

class SimilarBooksListViewItem extends StatelessWidget {
  const SimilarBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouters.kBookdetailsViwe,
                            extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            'https://upload.wikimedia.org/wikipedia/commons/8/89/HD_transparent_picture.png',
                      ),
                    ),
                  )),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorWidget(state.errMsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
