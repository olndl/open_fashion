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
  Future<List<Product>> getNewElectronics() async {
    final newElectronics = await apiConsumer.get(
      Endpoints.electronics,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newElectronics);
  }

  @override
  Future<List<Product>> getNewJewelery() async {
    final newJewelery = await apiConsumer.get(
      Endpoints.jewelery,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newJewelery);
  }

  @override
  Future<List<Product>> getNewMen() async {
    final newMen = await apiConsumer.get(
      Endpoints.men,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newMen);
  }

  @override
  Future<List<Product>> getNewWomen() async {
    final newWomen = await apiConsumer.get(
      Endpoints.women,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newWomen);
  }

  @override
  Future<List<Product>> getNewAll() async {
    final newAll = await apiConsumer.get(
      Endpoints.all,
      queryParameters: Endpoints.queryParamsTopDesc,
    );
    return productFromJson(newAll);
  }
}
