import 'package:dio/dio.dart';
import 'package:open_fashion/core/errors/logger.dart';
import 'package:open_fashion/data/datasource/dio/dio_error.dart';

// class DioClient {
//   DioClient()
//       : _dio = Dio(
//           BaseOptions(
//             baseUrl: C.api.baseUrl,
//             connectTimeout: 3000,
//             receiveTimeout: 3000,
//             contentType: C.api.contentType,
//             responseType: ResponseType.json,
//           ),
//         );
//   //..interceptors.add(AuthorizationInterceptor());
//
//   late final Dio _dio;
//
//   Future<AllCategories> fetchAllCategories() async {
//     try {
//       Response response = await _dio.get(
//         '/products/categories',
//       );
//       return response.data;
//     } on DioError catch (err) {
//       final errorMessage = DioException.fromDioError(err).toString();
//       throw errorMessage;
//     } catch (e) {
//       logger.info(e);
//       throw e.toString();
//     }
//   }
//
//   Future<List<Product>> fetchWomen() async {
//     try {
//       Response response = await _dio.get(
//         "/products/category/women's clothing?limit=4",
//       );
//       return productFromJson(response.data);
//     } on DioError catch (err) {
//       final errorMessage = DioException.fromDioError(err).toString();
//       throw errorMessage;
//     } catch (e) {
//       logger.info(e);
//       throw e.toString();
//     }
//   }
// }

class DioClient {
  final Dio _dio;

  DioClient(this._dio);

  // Get:-----------------------------------------------------------------------
  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      logger.info(e);
      throw e.toString();
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<dynamic> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      logger.info(e);
      throw e.toString();
    }
  }

  // Patch:---------------------------------------------------------------------
  Future<dynamic> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      logger.info(e);
      throw e.toString();
    }
  }
}
