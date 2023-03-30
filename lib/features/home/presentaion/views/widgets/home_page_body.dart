import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(),
        ],
      ),
    );
  }
}
