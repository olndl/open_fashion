import 'package:open_fashion/src/core/api/dio_consumer.dart';
import 'package:open_fashion/src/core/constants/endpoints.dart';
import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/main_category.dart';

class CategoriesDataSourceImpl implements CategoriesDataSource {
  DioConsumer dioConsumer;

  CategoriesDataSourceImpl({
    required this.dioConsumer,
  });

  @override
  Future<List<MainCategory>> getCategories() async {
    final categories = await dioConsumer.get(Endpoints.allCategories);
    return mainCategoryFromJson(categories);
  }
}
