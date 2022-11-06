import 'package:open_fashion/domain/entities/product.dart';

abstract class GetWomensProductstUseCase {
  Future<List<Product>> execute();
}
