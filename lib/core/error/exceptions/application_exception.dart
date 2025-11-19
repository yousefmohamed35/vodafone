import 'package:dio/dio.dart';
import 'client_exception.dart';
import 'server_exception.dart';

abstract class ApplicationException implements Exception {
  const ApplicationException();
}

class GenericApplicationException extends ApplicationException {
  final String? message;

  GenericApplicationException({required this.message});
}

void dioErrorDecoder(DioException e, String resourceName) {
  if (e.type == DioExceptionType.badResponse) {
    decodeResponseError(e, resourceName: resourceName);
  } else {
    throw ClientException.networkError(message: 'حدث خطأ في الانترنت');
  }
}

void decodeResponseError(DioException e, {String resourceName = ''}) {
  if (e.response?.statusCode.toString()[0] == "4") {
    decodeClientErrors(e, resourceName: resourceName);
  } else if (e.response?.statusCode.toString()[0] == "5") {
    decodeServerErrors(e);
  } else {
    throw GenericApplicationException(message: 'حدث خطأ ما');
  }
}

void decodeServerErrors(DioException e) {
  switch (e.response?.statusCode) {
    case 500:
      throw ServerException.internalError(message: 'حدث خطأ ما');
    case 503:
      throw ServerException.serviceUnavailable(message: 'هناك مشكلة من الخادم');
    default:
      throw ServerException.unknown(message: e.message ?? 'حدث خطأ ما');
  }
}

void decodeClientErrors(DioException e, {String resourceName = ''}) {
  switch (e.response?.statusCode) {
    case 401:
      throw const ClientException.unauthorizedAccess();
    case 403:
      throw ClientException.forbiddenAccess(message: '');
    case 404:
      throw ClientException.resourceNotFound(
        resourceName: resourceName,
        message: '',
      );
    case 400:
      throw ClientException.badRequest(message: '');
    case 406:
      throw ClientException.notAcceptable(message: '');
    default:
      throw ClientException.unknown(message: 'حدث خطأ ما');
  }
}
