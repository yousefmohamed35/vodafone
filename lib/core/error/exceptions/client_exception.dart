import 'package:freezed_annotation/freezed_annotation.dart';
import 'application_exception.dart';
part 'client_exception.freezed.dart';


@freezed
class ClientException extends ApplicationException
    with _$ClientException {
 

  const factory ClientException.unknown({required String message}) = Unknown;

  const factory ClientException.resourceNotFound({
    required String resourceName,
    required String message,
  }) = ResourceNotFound;

  const factory ClientException.unauthorizedAccess() = UnAuthorizedAccess;

  const factory ClientException.forbiddenAccess({required String message}) =
      ForbiddenAccess;

  const factory ClientException.networkError({required String message}) =
      NetworkError;

  const factory ClientException.cacheError({required String message}) =
      CacheError;

  const factory ClientException.badRequest({required String message}) =
      BadRequest;

  const factory ClientException.notAcceptable({required String message}) =
      NotAcceptableRequest;
}
