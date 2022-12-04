import 'package:open_fashion/src/core/usecases/usecase.dart';
import 'package:open_fashion/src/features/home/domain/entities/all_categories.dart';
import 'package:open_fashion/src/features/home/domain/models/main_category.dart';
import 'package:open_fashion/src/features/home/domain/repositories/categories_repository.dart';

class GetCategoriesUseCase implements UseCase<AllCategories, void> {
  final CategoriesRepository _categoriesRepository;

  GetCategoriesUseCase(this._categoriesRepository);

  @override
  Future<List<MainCategory>> call({void params}) {
    return _categoriesRepository.getCategories();
  }
}
