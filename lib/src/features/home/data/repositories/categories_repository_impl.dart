import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/domain/repositories/categories_repository.dart';

import '../../domain/models/category_item.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesDataSource categoriesDataSource;

  const CategoriesRepositoryImpl(this.categoriesDataSource);

  @override
  Future<List<CategoryItem>> getCategories() async {
    final categoryList = await categoriesDataSource.getCategories();
    return categoryList
        .map((item) => CategoryItem(
              label: item,
            ))
        .toList();
  }
}
