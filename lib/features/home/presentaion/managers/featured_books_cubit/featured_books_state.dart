part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccses extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccses(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMsg;

  const FeaturedBooksFailure(this.errMsg);
}
