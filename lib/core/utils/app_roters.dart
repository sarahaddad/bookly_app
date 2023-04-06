import 'package:ebook/features/home/presentaion/views/book_details_view.dart';
import 'package:ebook/features/home/presentaion/views/home_page.dart';
import 'package:ebook/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/search/presentation/views/search_view.dart';

abstract class AppRouters {
  static const kHomeView = '/homepage';
  static const kBookdetailsViwe = '/bookview';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kBookdetailsViwe,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
