import 'package:open_fashion/src/features/home/data/datasource/new_products_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/repositories/new_products_repository.dart';

class NewProductsRepositoryImpl implements NewProductsRepository {
  final NewProductsDataSource newProductsDataSource;

  const NewProductsRepositoryImpl(this.newProductsDataSource);
  @override
  Future<List<Product>> getNewAll() async {
    final newAll = await newProductsDataSource.getNewAll();
    return newAll;
  }

  @override
  Future<List<Product>> getNewElectronics() async {
    final newElectronics = await newProductsDataSource.getNewElectronics();
    return newElectronics;
  }

  @override
  Future<List<Product>> getNewJewelery() async {
    final newJewelery = await newProductsDataSource.getNewJewelery();
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
