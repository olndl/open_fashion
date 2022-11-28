import 'package:open_fashion/src/features/home/data/datasource/new_products_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/repositories/new_products_repository.dart';

class NewProductsRepositoryImpl implements NewProductsRepository {
  final NewProductsDataSource newProductsDataSource;

  const NewProductsRepositoryImpl(this.newProductsDataSource);
  @override
  Future<List<Product>> getNewAll() {
    // TODO: implement getNewAll
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getNewElectronics() {
    // TODO: implement getNewElectronics
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getNewJewelery() {
    // TODO: implement getNewJewelery
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getNewMen() {
    // TODO: implement getNewMen
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getNewWomen() async {
    final newWomen = await newProductsDataSource.getNewWomen();
    return newWomen;
  }
}
