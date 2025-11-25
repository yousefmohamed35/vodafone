import 'package:dio/dio.dart';

class DioFactory {
  static Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "https://voda.arkanzax.com",
        connectTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 500),
        headers: {"Accept": "application/json"},
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        error: true,
        requestHeader: false,
        responseHeader: false,
      ),
    );

    return dio;
  }
}
