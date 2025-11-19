import 'package:dio/dio.dart';
import 'dio_factory.dart';

class DioServices {
  final Dio _dio = DioFactory.create();

  // GET
  Future<Response> getRequest(
    String endpoint, {
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await _dio.get(
      endpoint,
      queryParameters: query,
      options: Options(
        headers: {if (token != null) "Authorization": "Bearer $token"},
      ),
    );
  }

  // POST
  Future<Response> postRequest(
    String endpoint, {
    Map<String, dynamic>? data,
    String? token,
  }) async {
    return await _dio.post(
      endpoint,
      data: data,
      options: Options(
        headers: {if (token != null) "Authorization": "Bearer $token"},
      ),
    );
  }

  // PUT
  Future<Response> putRequest(
    String endpoint, {
    Map<String, dynamic>? data,
    String? token,
  }) async {
    return await _dio.put(
      endpoint,
      data: data,
      options: Options(
        headers: {if (token != null) "Authorization": "Bearer $token"},
      ),
    );
  }

  // DELETE
  Future<Response> deleteRequest(
    String endpoint, {
    Map<String, dynamic>? data,
    String? token,
  }) async {
    return await _dio.delete(
      endpoint,
      data: data,
      options: Options(
        headers: {if (token != null) "Authorization": "Bearer $token"},
      ),
    );
  }
}
