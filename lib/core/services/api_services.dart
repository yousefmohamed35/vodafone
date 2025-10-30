import 'dart:io';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;

  ApiServices(this._dio) {
    _dio.options.baseUrl = 'https://live.my-compound.com/api/';
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
  }

  /// 🔹 عام لأي POST request
  Future<Response> post({
    required String endpoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } catch (e) {
      print('❌ POST Error: $e');
      rethrow;
    }
  }

  /// 🔹 رفع صور بعدد متغير (OCR)
  Future<Response> uploadImages(List<File> images) async {
    final formData = FormData();

    for (int i = 0; i < images.length; i++) {
      formData.files.add(MapEntry(
        'images[$i]',
        await MultipartFile.fromFile(
          images[i].path,
          filename: images[i].path.split('/').last,
        ),
      ));
    }

    try {
      final response = await _dio.post(
        'ocr',
        data: formData,
      );
      return response;
    } catch (e) {
      print('❌ Upload Error: $e');
      rethrow;
    }
  }
}
