import 'package:open_fashion/src/core/constants/interface.dart';
import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/category_item.dart';
import 'package:open_fashion/src/features/home/domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesDataSource categoriesDataSource;

  const CategoriesRepositoryImpl(this.categoriesDataSource);

  @override
  Future<List<CategoryItem>> getCategories() async {
    final categoryList = await categoriesDataSource.getCategories();
    categoryList.add(
      Interface.allLabel,
    );
    return categoryList
        .map(
          (item) => CategoryItem(
            label: item,
          ),
        )
        .toList()
        .reversed
        .toList();
  }
}
