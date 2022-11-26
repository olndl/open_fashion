import 'package:open_fashion/src/features/home/domain/models/all_categories.dart';

abstract class CategoriesDataSource {
  Future<AllCategories> getCategories();
}
