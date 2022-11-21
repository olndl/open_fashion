import 'package:open_fashion/data/datasource/database.dart';
import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/entities/product.dart';
import 'package:open_fashion/domain/repository.dart';

class RepositoryImpl implements Repository {
  final Database database;

  const RepositoryImpl(this.database);

  @override
  Future<AllCategories> getCategoryList() async {
    final categoryList = await database.fetchAllCategories();
    return categoryList;
  }

  @override
  Future<List<Product>> getWomensClothingTop() async {
    final womensClothing = await database.fetchWomenTop();
    return womensClothing;
  }
}
