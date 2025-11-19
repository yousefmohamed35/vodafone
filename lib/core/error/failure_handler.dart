import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Either<FailureHandler, T> handleError<T>(Object e) {
  if (e is DioException) {
    return left(ServerError.fromDioError(e));
  }
  return left(ServerError(errorMessage: 'Oops! Unexpected Error'));
}

abstract class FailureHandler {
  final String errorMessage;

  FailureHandler({required this.errorMessage});
}

class NoInternetFailure extends ServerError {
  NoInternetFailure()
      : super(errorMessage: 'No Internet Connection, check Your connection');
}

class ServerError extends FailureHandler {
  ServerError({required super.errorMessage});

  factory ServerError.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerError(errorMessage: 'Connection to Server Timeout');
      case DioExceptionType.sendTimeout:
        return ServerError(errorMessage: 'Send to Server Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerError(errorMessage: 'Receiver with Server Timeout');
      case DioExceptionType.badCertificate:
        return ServerError(errorMessage: 'Bad Certificate For Server');
      case DioExceptionType.badResponse:
        debugPrint("DioError printDB ${dioError.response}");
        return ServerError.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerError(errorMessage: 'Connection to Server Canceled');
      case DioExceptionType.connectionError:
        return NoInternetFailure();
      case DioExceptionType.unknown:
        return ServerError(
            errorMessage: dioError.message ?? 'Opps UnExpected Error');
      default:
        return ServerError(
            errorMessage: dioError.message ?? 'Opps UnExpected Error');
    }
  }

  factory ServerError.fromResponse(int status, dynamic response) {
    if (status == 403 ||
        status == 200 ||
        status == 400 ||
        status == 401 ||
        status == 404 ||
        status == 405 ||
        status == 422 ||
        status == 409 ||
        status == 500) {
      if (response['message'].toString() == "error" ||
          response['status'].toString() == "false" ||
          response['code'].toString() == "406") {
        return ServerError(
            errorMessage: extractErrorsAsString(response['error']));
      }
    } else {
      return ServerError(
          errorMessage:
              'Oops, an unexpected error occurred. Please try again.');
    }
    debugPrint("fromResponse =========== end $response");
    return ServerError(
        errorMessage: 'Oops, an unexpected error occurred. Please try again.');
  }
}

String extractErrorsAsString(Map<String, dynamic> errors) {
  final buffer = StringBuffer();

  errors.forEach((key, messages) {
    if (messages is List) {
      for (var message in messages) {
        buffer.writeln(message);
      }
    }
  });

  return buffer.toString().trim();
}