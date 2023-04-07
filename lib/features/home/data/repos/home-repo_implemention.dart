import 'package:ebook/features/home/data/models/book_model/book_model.dart';
import 'package:ebook/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ebook/features/home/data/repos/home_repo.dart';
import 'package:ebook/features/home/presentaion/views/widgets/home_page_body.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeturedBooks() {
    // TODO: implement fetchFeturedBooks
    throw UnimplementedError();
  }
}
