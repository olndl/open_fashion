import 'package:open_fashion/src/core/usecases/usecase.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/repositories/new_products_repository.dart';

class GetNewMenProductsUseCase implements UseCase<List<Product>, void> {
  final NewProductsRepository _newProductsRepository;

  GetNewMenProductsUseCase(this._newProductsRepository);

  @override
  Future<List<Product>> call({void params}) {
    return _newProductsRepository.getNewMen();
  }
}
