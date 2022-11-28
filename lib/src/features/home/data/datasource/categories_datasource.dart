import 'package:open_fashion/src/features/home/domain/entities/all_categories.dart';

abstract class CategoriesDataSource {
  Future<AllCategories> getCategories();
}
