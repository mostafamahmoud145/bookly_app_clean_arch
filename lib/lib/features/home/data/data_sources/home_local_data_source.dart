import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

import '../../../../constants.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> getFeaturedBooks();
  List<BookEntity> getNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{

  @override
  List<BookEntity> getFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> getNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}