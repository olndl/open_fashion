import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/entities/product.dart';

abstract class Repository {
  Future<AllCategories> getCategoryList();
  Future<List<Product>> getWomensClothingTop();
}
