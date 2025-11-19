import 'package:flutter/foundation.dart';
import 'package:vodafon/core/error/failure/server_failure.dart';
import '../exceptions/application_exception.dart';
import '../exceptions/client_exception.dart';
import '../exceptions/server_exception.dart';
import 'client_failure.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

/// Can be used when the list of exceptions is exhausted. Also, It maps to [GenericApplicationException].
class GenericFailure extends Failure {
  final bool isAction;

  GenericFailure({required String message, this.isAction = false})
    : super(message);
}

Future<Failure> dioExceptionsDecoder(
  ApplicationException e, {
  bool Function()? isAction,
  VoidCallback? unauthorizedAccessHandler,
}) async {
  final isAnAction = isAction != null && isAction.call();
  if (e is ClientException) {
    return e.when(
      unknown: (message) =>
          ClientFailure.unknown(message: message, isAction: isAnAction),
      resourceNotFound: (resourceName, message) =>
          ClientFailure.resourceNotFound(
            message: message,
            isAction: isAnAction,
          ),
      unauthorizedAccess: () async {
        return ClientFailure.unauthorizedAccess(
          isAction: isAnAction,
          message: '',
        );
      },
      networkError: (String message) =>
          ClientFailure.networkError(message: message, isAction: isAnAction),
      cacheError: (String message) =>
          ClientFailure.cacheError(message: message),
      badRequest: (message) =>
          ClientFailure.badRequest(message: message, isAction: isAnAction),
      forbiddenAccess: (String message) =>
          ClientFailure.forbiddenAccess(message: message, isAction: isAnAction),
      notAcceptable: (String message) => ClientFailure.notAcceptableRequest(
        message: message,
        isAction: isAnAction,
      ),
    );
  } else if (e is ServerException) {
    return e.when(
      unknown: (message) =>
          ServerFailure.unknown(message: message, isAction: isAnAction),
      internalError: (message) =>
          ServerFailure.internalError(message: message, isAction: isAnAction),
      serviceUnavailable: (message) => ServerFailure.serviceUnavailable(
        message: message,
        isAction: isAnAction,
      ),
    );
  } else {
    return GenericFailure(message: 'حدث خطأ ما', isAction: isAnAction);
  }
}
