import 'package:open_fashion/src/features/home/domain/models/all_categories.dart';

abstract class CategoriesRepository {
  Future<AllCategories> getCategories();
}
