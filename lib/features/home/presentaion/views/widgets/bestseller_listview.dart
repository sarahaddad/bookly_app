import 'package:flutter/material.dart';

import 'bestseller_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        }));
  }
}
