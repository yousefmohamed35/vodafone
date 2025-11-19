// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServerFailure {
  String get message => throw _privateConstructorUsedError;
  bool get isAction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, bool isAction)? unknown,
    TResult? Function(String message, bool isAction)? internalError,
    TResult? Function(String message, bool isAction)? serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(InternalError value)? internalError,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res, ServerFailure>;
  @useResult
  $Res call({String message, bool isAction});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res, $Val extends ServerFailure>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isAction = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: null == isAction
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isAction = null,
  }) {
    return _then(_$UnknownImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: null == isAction
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ServerFailure.unknown(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isAction, isAction) ||
                other.isAction == isAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) {
    return unknown(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, bool isAction)? unknown,
    TResult? Function(String message, bool isAction)? internalError,
    TResult? Function(String message, bool isAction)? serviceUnavailable,
  }) {
    return unknown?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(InternalError value)? internalError,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements ServerFailure {
  const factory Unknown({required final String message, final bool isAction}) =
      _$UnknownImpl;

  @override
  String get message;
  @override
  bool get isAction;
  @override
  @JsonKey(ignore: true)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalErrorImplCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$InternalErrorImplCopyWith(
          _$InternalErrorImpl value, $Res Function(_$InternalErrorImpl) then) =
      __$$InternalErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$InternalErrorImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$InternalErrorImpl>
    implements _$$InternalErrorImplCopyWith<$Res> {
  __$$InternalErrorImplCopyWithImpl(
      _$InternalErrorImpl _value, $Res Function(_$InternalErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isAction = null,
  }) {
    return _then(_$InternalErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: null == isAction
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InternalErrorImpl implements InternalError {
  const _$InternalErrorImpl({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ServerFailure.internalError(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isAction, isAction) ||
                other.isAction == isAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalErrorImplCopyWith<_$InternalErrorImpl> get copyWith =>
      __$$InternalErrorImplCopyWithImpl<_$InternalErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) {
    return internalError(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, bool isAction)? unknown,
    TResult? Function(String message, bool isAction)? internalError,
    TResult? Function(String message, bool isAction)? serviceUnavailable,
  }) {
    return internalError?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(InternalError value)? internalError,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements ServerFailure {
  const factory InternalError(
      {required final String message,
      final bool isAction}) = _$InternalErrorImpl;

  @override
  String get message;
  @override
  bool get isAction;
  @override
  @JsonKey(ignore: true)
  _$$InternalErrorImplCopyWith<_$InternalErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUnavailableImplCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$ServiceUnavailableImplCopyWith(_$ServiceUnavailableImpl value,
          $Res Function(_$ServiceUnavailableImpl) then) =
      __$$ServiceUnavailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$ServiceUnavailableImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$ServiceUnavailableImpl>
    implements _$$ServiceUnavailableImplCopyWith<$Res> {
  __$$ServiceUnavailableImplCopyWithImpl(_$ServiceUnavailableImpl _value,
      $Res Function(_$ServiceUnavailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isAction = null,
  }) {
    return _then(_$ServiceUnavailableImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: null == isAction
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceUnavailableImpl implements ServiceUnavailable {
  const _$ServiceUnavailableImpl(
      {required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ServerFailure.serviceUnavailable(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUnavailableImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isAction, isAction) ||
                other.isAction == isAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceUnavailableImplCopyWith<_$ServiceUnavailableImpl> get copyWith =>
      __$$ServiceUnavailableImplCopyWithImpl<_$ServiceUnavailableImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) {
    return serviceUnavailable(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, bool isAction)? unknown,
    TResult? Function(String message, bool isAction)? internalError,
    TResult? Function(String message, bool isAction)? serviceUnavailable,
  }) {
    return serviceUnavailable?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) {
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(InternalError value)? internalError,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
  }) {
    return serviceUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class ServiceUnavailable implements ServerFailure {
  const factory ServiceUnavailable(
      {required final String message,
      final bool isAction}) = _$ServiceUnavailableImpl;

  @override
  String get message;
  @override
  bool get isAction;
  @override
  @JsonKey(ignore: true)
  _$$ServiceUnavailableImplCopyWith<_$ServiceUnavailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}