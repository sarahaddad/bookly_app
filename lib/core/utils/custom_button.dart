import 'package:ebook/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.textColor,
      required this.buttonBackgroundColor,
      this.borderRadius,
      required this.text});
  final Color textColor;
  final Color buttonBackgroundColor;
  final BorderRadius? borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(text, style: Styles.textStyle18.copyWith(color: textColor)),
        onPressed: () {},
      ),
    );
  }
}
