import 'package:ebook/core/utils/custom_button.dart';
import 'package:ebook/core/utils/functions/url_luncher.dart';
import 'package:ebook/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              buttonBackgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  topLeft: Radius.circular(14)),
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                customLuncherUrl(bookModel.volumeInfo.previewLink, context);
              },
              buttonBackgroundColor: const Color(0xffEf8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  topRight: Radius.circular(14)),
              text: getText(bookModel),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink != null) {
      return 'Preview';
    } else {
      return 'Not Available';
    }
  }
}
