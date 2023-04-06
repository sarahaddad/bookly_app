import 'package:ebook/core/utils/custom_button.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              buttonBackgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  topLeft: Radius.circular(14)),
              text: '19.99',
            ),
          ),
          Expanded(
            child: CustomButton(
              buttonBackgroundColor: Color(0xffEf8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  topRight: Radius.circular(14)),
              text: 'Free preview',
            ),
          ),
        ],
      ),
    );
  }
}
