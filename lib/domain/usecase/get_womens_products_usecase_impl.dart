import 'package:open_fashion/domain/entities/product.dart';
import 'package:open_fashion/domain/repository.dart';
import 'package:open_fashion/domain/usecase/get_womens_products_usecase.dart';

class GetWomensProductstUseCaseImpl implements GetWomensProductstUseCase {
  final Repository _repository;

  const GetWomensProductstUseCaseImpl(this._repository);

  @override
  Future<List<Product>> execute() => _repository.getWomensClothing();
}
