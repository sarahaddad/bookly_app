import 'package:bloc/bloc.dart';
import 'package:ebook/features/home/data/models/book_model/book_model.dart';
import 'package:ebook/features/home/data/repos/home-repo_implemention.dart';
import 'package:ebook/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(
      FeaturedBooksLoading(),
    );
    var result = await homeRepo.fetchFeturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccses(books));
    });
  }
}
