import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try{
      List<BookEntity> books;
      books = homeLocalDataSource.getFeaturedBooks();
      if(books.isNotEmpty){
        return right(books);
      }
      books = await homeRemoteDataSource.getFeauturedBooks();
      return right(books);
    } catch (e){
      return left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try{
      List<BookEntity> books;
      books = homeLocalDataSource.getNewestBooks();
      if(books.isNotEmpty){
        return right(books);
      }
      books = await homeRemoteDataSource.getNewestBooks();
      return right(books);
    } catch (e){
      return left(ServerFailure());
    }
  }
}
