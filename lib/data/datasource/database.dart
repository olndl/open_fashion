import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/entities/product.dart';

abstract class Database {
  Future<AllCategories> allCategories();
  Future<List<Product>> women();
}
