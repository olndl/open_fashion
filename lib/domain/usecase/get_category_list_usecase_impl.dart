import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/repository.dart';
import 'package:open_fashion/domain/usecase/get_category_list_usecase.dart';

class GetCategoryListUseCaseImpl implements GetCategoryListUseCase {
  final Repository _repository;

  const GetCategoryListUseCaseImpl(this._repository);

  @override
  Future<AllCategories> execute() => _repository.getCategoryList();
}
