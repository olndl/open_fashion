import 'package:open_fashion/core/constants/endpoints.dart';
import 'package:open_fashion/data/datasource/database.dart';
import 'package:open_fashion/data/datasource/dio/dio_client.dart';
import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/entities/product.dart';

class DatabaseImpl implements Database {
  final DioClient dioClient;

  DatabaseImpl({required this.dioClient});

  @override
  Future<AllCategories> fetchAllCategories() async {
    final categories = await dioClient.get(Endpoints.allCategories);
    return categories;
  }

  @override
  Future<List<Product>> fetchWomenTop() async {
    final womensClothingTop = await dioClient.get(Endpoints.women,
        queryParameters: Endpoints.queryParamsTop);
    return productFromJson(womensClothingTop);
  }
}
