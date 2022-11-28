import 'package:open_fashion/src/features/home/domain/models/product.dart';

abstract class NewProductsRepository {
  Future<List<Product>> getNewAll();
  Future<List<Product>> getNewWomen();
  Future<List<Product>> getNewMen();
  Future<List<Product>> getNewJewelery();
  Future<List<Product>> getNewElectronics();
}
