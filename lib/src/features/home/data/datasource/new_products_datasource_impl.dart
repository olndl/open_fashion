import 'package:open_fashion/src/core/api/dio_consumer.dart';
import 'package:open_fashion/src/core/constants/endpoints.dart';
import 'package:open_fashion/src/features/home/data/datasource/new_products_datasource.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';

class NewProductsDataSourceImpl implements NewProductsDataSource {
  DioConsumer dioConsumer;

  NewProductsDataSourceImpl({
    required this.dioConsumer,
  });

  @override
  Future<List<Product>> getNewAccessories() async {
    final newElectronics = await dioConsumer.get(
      Endpoints.accessories,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newElectronics);
  }

  @override
  Future<List<Product>> getNewBeauty() async {
    final newJewelery = await dioConsumer.get(
      Endpoints.beauty,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newJewelery);
  }

  @override
  Future<List<Product>> getNewMen() async {
    final newMen = await dioConsumer.get(
      Endpoints.men,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newMen);
  }

  @override
  Future<List<Product>> getNewWomen() async {
    final newWomen = await dioConsumer.get(
      Endpoints.women,
      queryParameters: Endpoints.queryParamsTop,
    );
    return productFromJson(newWomen);
  }
}
