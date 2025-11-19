// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClientException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientExceptionCopyWith<$Res> {
  factory $ClientExceptionCopyWith(
    ClientException value,
    $Res Function(ClientException) then,
  ) = _$ClientExceptionCopyWithImpl<$Res, ClientException>;
}

/// @nodoc
class _$ClientExceptionCopyWithImpl<$Res, $Val extends ClientException>
    implements $ClientExceptionCopyWith<$Res> {
  _$ClientExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
    _$UnknownImpl value,
    $Res Function(_$UnknownImpl) then,
  ) = __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
    _$UnknownImpl _value,
    $Res Function(_$UnknownImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UnknownImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements ClientException {
  const factory Unknown({required final String message}) = _$UnknownImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceNotFoundImplCopyWith<$Res> {
  factory _$$ResourceNotFoundImplCopyWith(
    _$ResourceNotFoundImpl value,
    $Res Function(_$ResourceNotFoundImpl) then,
  ) = __$$ResourceNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String resourceName, String message});
}

/// @nodoc
class __$$ResourceNotFoundImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$ResourceNotFoundImpl>
    implements _$$ResourceNotFoundImplCopyWith<$Res> {
  __$$ResourceNotFoundImplCopyWithImpl(
    _$ResourceNotFoundImpl _value,
    $Res Function(_$ResourceNotFoundImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? resourceName = null, Object? message = null}) {
    return _then(
      _$ResourceNotFoundImpl(
        resourceName: null == resourceName
            ? _value.resourceName
            : resourceName // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ResourceNotFoundImpl implements ResourceNotFound {
  const _$ResourceNotFoundImpl({
    required this.resourceName,
    required this.message,
  });

  @override
  final String resourceName;
  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.resourceNotFound(resourceName: $resourceName, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceNotFoundImpl &&
            (identical(other.resourceName, resourceName) ||
                other.resourceName == resourceName) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resourceName, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceNotFoundImplCopyWith<_$ResourceNotFoundImpl> get copyWith =>
      __$$ResourceNotFoundImplCopyWithImpl<_$ResourceNotFoundImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return resourceNotFound(resourceName, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return resourceNotFound?.call(resourceName, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(resourceName, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return resourceNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return resourceNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(this);
    }
    return orElse();
  }
}

abstract class ResourceNotFound implements ClientException {
  const factory ResourceNotFound({
    required final String resourceName,
    required final String message,
  }) = _$ResourceNotFoundImpl;

  String get resourceName;
  String get message;
  @JsonKey(ignore: true)
  _$$ResourceNotFoundImplCopyWith<_$ResourceNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedAccessImplCopyWith<$Res> {
  factory _$$UnAuthorizedAccessImplCopyWith(
    _$UnAuthorizedAccessImpl value,
    $Res Function(_$UnAuthorizedAccessImpl) then,
  ) = __$$UnAuthorizedAccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedAccessImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$UnAuthorizedAccessImpl>
    implements _$$UnAuthorizedAccessImplCopyWith<$Res> {
  __$$UnAuthorizedAccessImplCopyWithImpl(
    _$UnAuthorizedAccessImpl _value,
    $Res Function(_$UnAuthorizedAccessImpl) _then,
  ) : super(_value, _then);
}

/// @nodoc

class _$UnAuthorizedAccessImpl implements UnAuthorizedAccess {
  const _$UnAuthorizedAccessImpl();

  @override
  String toString() {
    return 'ClientException.unauthorizedAccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedAccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return unauthorizedAccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return unauthorizedAccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return unauthorizedAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return unauthorizedAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess(this);
    }
    return orElse();
  }
}

abstract class UnAuthorizedAccess implements ClientException {
  const factory UnAuthorizedAccess() = _$UnAuthorizedAccessImpl;
}

/// @nodoc
abstract class _$$ForbiddenAccessImplCopyWith<$Res> {
  factory _$$ForbiddenAccessImplCopyWith(
    _$ForbiddenAccessImpl value,
    $Res Function(_$ForbiddenAccessImpl) then,
  ) = __$$ForbiddenAccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForbiddenAccessImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$ForbiddenAccessImpl>
    implements _$$ForbiddenAccessImplCopyWith<$Res> {
  __$$ForbiddenAccessImplCopyWithImpl(
    _$ForbiddenAccessImpl _value,
    $Res Function(_$ForbiddenAccessImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ForbiddenAccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ForbiddenAccessImpl implements ForbiddenAccess {
  const _$ForbiddenAccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.forbiddenAccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenAccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenAccessImplCopyWith<_$ForbiddenAccessImpl> get copyWith =>
      __$$ForbiddenAccessImplCopyWithImpl<_$ForbiddenAccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return forbiddenAccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return forbiddenAccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (forbiddenAccess != null) {
      return forbiddenAccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return forbiddenAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return forbiddenAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (forbiddenAccess != null) {
      return forbiddenAccess(this);
    }
    return orElse();
  }
}

abstract class ForbiddenAccess implements ClientException {
  const factory ForbiddenAccess({required final String message}) =
      _$ForbiddenAccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ForbiddenAccessImplCopyWith<_$ForbiddenAccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
    _$NetworkErrorImpl value,
    $Res Function(_$NetworkErrorImpl) then,
  ) = __$$NetworkErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
    _$NetworkErrorImpl _value,
    $Res Function(_$NetworkErrorImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NetworkErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NetworkErrorImpl implements NetworkError {
  const _$NetworkErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.networkError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements ClientException {
  const factory NetworkError({required final String message}) =
      _$NetworkErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorImplCopyWith<$Res> {
  factory _$$CacheErrorImplCopyWith(
    _$CacheErrorImpl value,
    $Res Function(_$CacheErrorImpl) then,
  ) = __$$CacheErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheErrorImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$CacheErrorImpl>
    implements _$$CacheErrorImplCopyWith<$Res> {
  __$$CacheErrorImplCopyWithImpl(
    _$CacheErrorImpl _value,
    $Res Function(_$CacheErrorImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CacheErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CacheErrorImpl implements CacheError {
  const _$CacheErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.cacheError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      __$$CacheErrorImplCopyWithImpl<_$CacheErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return cacheError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return cacheError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError implements ClientException {
  const factory CacheError({required final String message}) = _$CacheErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
    _$BadRequestImpl value,
    $Res Function(_$BadRequestImpl) then,
  ) = __$$BadRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
    _$BadRequestImpl _value,
    $Res Function(_$BadRequestImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$BadRequestImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BadRequestImpl implements BadRequest {
  const _$BadRequestImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements ClientException {
  const factory BadRequest({required final String message}) = _$BadRequestImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotAcceptableRequestImplCopyWith<$Res> {
  factory _$$NotAcceptableRequestImplCopyWith(
    _$NotAcceptableRequestImpl value,
    $Res Function(_$NotAcceptableRequestImpl) then,
  ) = __$$NotAcceptableRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotAcceptableRequestImplCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res, _$NotAcceptableRequestImpl>
    implements _$$NotAcceptableRequestImplCopyWith<$Res> {
  __$$NotAcceptableRequestImplCopyWithImpl(
    _$NotAcceptableRequestImpl _value,
    $Res Function(_$NotAcceptableRequestImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NotAcceptableRequestImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NotAcceptableRequestImpl implements NotAcceptableRequest {
  const _$NotAcceptableRequestImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.notAcceptable(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAcceptableRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotAcceptableRequestImplCopyWith<_$NotAcceptableRequestImpl>
  get copyWith =>
      __$$NotAcceptableRequestImplCopyWithImpl<_$NotAcceptableRequestImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
    resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notAcceptable,
  }) {
    return notAcceptable(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String resourceName, String message)? resourceNotFound,
    TResult? Function()? unauthorizedAccess,
    TResult? Function(String message)? forbiddenAccess,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? notAcceptable,
  }) {
    return notAcceptable?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notAcceptable,
    required TResult orElse(),
  }) {
    if (notAcceptable != null) {
      return notAcceptable(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotAcceptableRequest value) notAcceptable,
  }) {
    return notAcceptable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(ResourceNotFound value)? resourceNotFound,
    TResult? Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult? Function(ForbiddenAccess value)? forbiddenAccess,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotAcceptableRequest value)? notAcceptable,
  }) {
    return notAcceptable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotAcceptableRequest value)? notAcceptable,
    required TResult orElse(),
  }) {
    if (notAcceptable != null) {
      return notAcceptable(this);
    }
    return orElse();
  }
}

abstract class NotAcceptableRequest implements ClientException {
  const factory NotAcceptableRequest({required final String message}) =
      _$NotAcceptableRequestImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$NotAcceptableRequestImplCopyWith<_$NotAcceptableRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
