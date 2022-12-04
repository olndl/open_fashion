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
  Future<List<Product>> getNewAccessories() async {
    final newElectronics = await apiConsumer.get(
      Endpoints.accessories,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newElectronics);
  }

  @override
  Future<List<Product>> getNewBeauty() async {
    final newJewelery = await apiConsumer.get(
      Endpoints.beauty,
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
}
