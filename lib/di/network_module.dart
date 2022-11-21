import 'package:dio/dio.dart';
import 'package:open_fashion/core/constants/endpoints.dart';

abstract class NetworkModule {
  static Dio provideDio() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        connectTimeout: 3000,
        receiveTimeout: 3000,
        contentType: Endpoints.contentType,
        responseType: ResponseType.json,
      ),
    )..interceptors.add(
        LogInterceptor(
          request: true,
          responseBody: true,
          requestBody: true,
          requestHeader: true,
        ),
      );
    return dio;
  }
}
