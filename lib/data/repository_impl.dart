import 'package:open_fashion/data/datasource/database.dart';
import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/entities/product.dart';
import 'package:open_fashion/domain/repository.dart';

class RepositoryImpl implements Repository {
  final Database database;

  const RepositoryImpl(this.database);

  @override
  Future<AllCategories> getCategoryList() async {
    final categoryList = await database.allCategories();
    return categoryList;
  }

  @override
  Future<List<Product>> getWomensClothing() async {
    final womensClothing = await database.women();
    return womensClothing;
  }
}
