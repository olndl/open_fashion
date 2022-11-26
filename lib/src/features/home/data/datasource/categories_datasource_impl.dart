import 'package:open_fashion/src/core/api/api_comsumer.dart';
import 'package:open_fashion/src/core/constants/endpoints.dart';
import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/all_categories.dart';

class CategoriesDataSourceImpl implements CategoriesDataSource {
  ApiConsumer apiConsumer;

  CategoriesDataSourceImpl({
    required this.apiConsumer,
  });

  @override
  Future<AllCategories> getCategories() async {
    final categories = await apiConsumer.get(Endpoints.allCategories);
    return categories;
  }
}
