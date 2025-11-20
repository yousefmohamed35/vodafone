import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../error/exceptions/application_exception.dart';

Future<T> resolveOrThrow<T>(
  Future<T> Function() target, {
  String? context,
}) async {
  try {
    return await target();
  } on DioException catch (e) {
    dioErrorDecoder(e, context ?? '');
  } on Exception catch (e, s) {
    if (kDebugMode) {
      log("DataSourceError:\n $e", level: Level.SEVERE.value, stackTrace: s);
    }
    throw GenericApplicationException(message: "somethingWentWrong");
  } catch (e, s) {
    if (kDebugMode) {
      log("DataSourceError:\n $e", level: Level.SEVERE.value, stackTrace: s);
    }
    throw GenericApplicationException(message: "somethingWentWrong");
  }
  throw GenericApplicationException(message: "somethingWentWrong");
}
