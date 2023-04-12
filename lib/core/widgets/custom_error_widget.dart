import 'package:ebook/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomErorWidget extends StatelessWidget {
  const CustomErorWidget({super.key, required this.errorMsg});
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMsg,
        style: Styles.textStyle18,
      ),
    );
  }
}
