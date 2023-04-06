import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CustomBookImage(),
            )),
      ),
    );
  }
}
