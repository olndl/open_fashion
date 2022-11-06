import 'package:open_fashion/data/datasource/database.dart';
import 'package:open_fashion/data/datasource/dio/dio_client.dart';
import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/entities/product.dart';

class DatabaseImpl implements Database {
  final DioClient dioClient;

  DatabaseImpl({required this.dioClient});
  @override
  Future<AllCategories> allCategories() async {
    final categories = await dioClient.fetchAllCategories();
    return categories;
  }

  @override
  Future<List<Product>> women() async {
    final womensClothing = await dioClient.fetchWomen();
    return womensClothing;
  }
}
