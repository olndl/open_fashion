import 'package:open_fashion/domain/entities/all_categories.dart';

abstract class GetCategoryListUseCase {
  Future<AllCategories> execute();
}
