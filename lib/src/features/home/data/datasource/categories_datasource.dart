import 'package:open_fashion/src/features/home/domain/models/main_category.dart';

abstract class CategoriesDataSource {
  Future<List<MainCategory>> getCategories();
}
