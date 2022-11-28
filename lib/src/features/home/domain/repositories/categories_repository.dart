import 'package:open_fashion/src/features/home/domain/models/category_item.dart';

abstract class CategoriesRepository {
  Future<List<CategoryItem>> getCategories();
}
