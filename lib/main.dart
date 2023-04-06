import 'package:ebook/constant.dart';
import 'package:ebook/core/utils/app_roters.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimnarycolor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
