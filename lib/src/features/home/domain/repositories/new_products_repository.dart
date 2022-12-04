import 'package:open_fashion/src/features/home/domain/models/product.dart';

abstract class NewProductsRepository {
  Future<List<Product>> getNewWomen();
  Future<List<Product>> getNewMen();
  Future<List<Product>> getNewBeauty();
  Future<List<Product>> getNewAccessories();
}
