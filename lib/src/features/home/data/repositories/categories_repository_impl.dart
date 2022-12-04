import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/main_category.dart';
import 'package:open_fashion/src/features/home/domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesDataSource categoriesDataSource;

  const CategoriesRepositoryImpl(this.categoriesDataSource);

  @override
  Future<List<MainCategory>> getCategories() async {
    final categoryList = await categoriesDataSource.getCategories();
    return categoryList;
  }
}
