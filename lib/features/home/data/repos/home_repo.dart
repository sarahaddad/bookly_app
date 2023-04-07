import 'package:dartz/dartz.dart';
import 'package:ebook/core/errors/failures.dart';
import 'package:ebook/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeturedBooks();
}
