import 'package:open_fashion/src/features/home/data/datasource/new_products_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/repositories/new_products_repository.dart';

class NewProductsRepositoryImpl implements NewProductsRepository {
  final NewProductsDataSource newProductsDataSource;

  const NewProductsRepositoryImpl(this.newProductsDataSource);

  @override
  Future<List<Product>> getNewAccessories() async {
    final newElectronics = await newProductsDataSource.getNewAccessories();
    return newElectronics;
  }

  @override
  Future<List<Product>> getNewBeauty() async {
    final newJewelery = await newProductsDataSource.getNewBeauty();
    return newJewelery;
  }

  @override
  Future<List<Product>> getNewMen() async {
    final newMen = await newProductsDataSource.getNewMen();
    return newMen;
  }

  @override
  Future<List<Product>> getNewWomen() async {
    final newWomen = await newProductsDataSource.getNewWomen();
    return newWomen;
  }
}
