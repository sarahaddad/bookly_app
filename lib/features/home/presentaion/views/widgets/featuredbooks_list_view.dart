import 'package:ebook/core/utils/app_roters.dart';
import 'package:ebook/core/widgets/custom_progress_indicator.dart';
import 'package:ebook/features/home/presentaion/managers/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import 'custom_book_image.dart';

class FeturedBooksListView extends StatelessWidget {
  const FeturedBooksListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccses) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouters.kBookdetailsViwe,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                )),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErorWidget(
          errorMsg: state.errMsg,
        );
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
