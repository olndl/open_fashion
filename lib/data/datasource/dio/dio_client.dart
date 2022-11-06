import 'package:dio/dio.dart';
import 'package:open_fashion/core/c.dart';
import 'package:open_fashion/core/errors/logger.dart';
import 'package:open_fashion/data/datasource/dio/dio_error.dart';
import 'package:open_fashion/domain/entities/all_categories.dart';

import '../../../domain/entities/product.dart';

class DioClient {
  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: C.api.baseUrl,
            connectTimeout: 3000,
            receiveTimeout: 3000,
            contentType: C.api.contentType,
            responseType: ResponseType.json,
          ),
        );
  //..interceptors.add(AuthorizationInterceptor());

  late final Dio _dio;

  Future<AllCategories> fetchAllCategories() async {
    try {
      Response response = await _dio.get(
        '/products/categories',
      );
      print('wow ${response.data.runtimeType}');
      return response.data;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      logger.info(e);
      throw e.toString();
    }
  }

  Future<List<Product>> fetchWomen() async {
    try {
      Response response = await _dio.get(
        "/products/category/women's clothing",
      );
      print(productFromJson(response.data));
      return productFromJson(response.data);
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      logger.info(e);
      throw e.toString();
    }
  }
}
