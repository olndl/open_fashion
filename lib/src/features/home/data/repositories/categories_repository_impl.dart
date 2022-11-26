import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/all_categories.dart';
import 'package:open_fashion/src/features/home/domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesDataSource categoriesDataSource;

  const CategoriesRepositoryImpl(this.categoriesDataSource);

  @override
  Future<AllCategories> getCategoryList() async {
    final categoryList = await categoriesDataSource.getCategories();
    return categoryList;
  }
}
