import 'package:open_fashion/src/core/api/api_comsumer.dart';
import 'package:open_fashion/src/core/constants/endpoints.dart';
import 'package:open_fashion/src/features/home/data/datasource/new_products_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';

class NewProductsDataSourceImpl implements NewProductsDataSource {
  ApiConsumer apiConsumer;

  NewProductsDataSourceImpl({
    required this.apiConsumer,
  });

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
    final newWomen = await apiConsumer.get(Endpoints.women,
        queryParameters: Endpoints.queryParamsTop);
    return productFromJson(newWomen);
  }

  @override
  Future<List<Product>> getNewAll() {
    // TODO: implement getNewAll
    throw UnimplementedError();
  }
}
