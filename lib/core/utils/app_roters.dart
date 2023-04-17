import 'package:ebook/core/utils/service_locator.dart';
import 'package:ebook/features/home/data/models/book_model/book_model.dart';
import 'package:ebook/features/home/data/repos/home-repo_implemention.dart';
import 'package:ebook/features/home/presentaion/managers/similar_books/similar_books_cubit.dart';
import 'package:ebook/features/home/presentaion/views/book_details_view.dart';
import 'package:ebook/features/home/presentaion/views/home_page.dart';
import 'package:ebook/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImp>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
