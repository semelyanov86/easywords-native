// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'remote_creation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteCreationResponseTearOff {
  const _$RemoteCreationResponseTearOff();

  _NoConnection<T> noConnection<T>() {
    return _NoConnection<T>();
  }

  _ValidationError<T> validationError<T>({required String message}) {
    return _ValidationError<T>(
      message: message,
    );
  }

  _Created<T> created<T>(T data) {
    return _Created<T>(
      data,
    );
  }
}

/// @nodoc
const $RemoteCreationResponse = _$RemoteCreationResponseTearOff();

/// @nodoc
mixin _$RemoteCreationResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) validationError,
    required TResult Function(T data) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? validationError,
    TResult Function(T data)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ValidationError<T> value) validationError,
    required TResult Function(_Created<T> value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ValidationError<T> value)? validationError,
    TResult Function(_Created<T> value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteCreationResponseCopyWith<T, $Res> {
  factory $RemoteCreationResponseCopyWith(RemoteCreationResponse<T> value,
          $Res Function(RemoteCreationResponse<T>) then) =
      _$RemoteCreationResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$RemoteCreationResponseCopyWithImpl<T, $Res>
    implements $RemoteCreationResponseCopyWith<T, $Res> {
  _$RemoteCreationResponseCopyWithImpl(this._value, this._then);

  final RemoteCreationResponse<T> _value;
  // ignore: unused_field
  final $Res Function(RemoteCreationResponse<T>) _then;
}

/// @nodoc
abstract class _$NoConnectionCopyWith<T, $Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection<T> value, $Res Function(_NoConnection<T>) then) =
      __$NoConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$NoConnectionCopyWithImpl<T, $Res>
    extends _$RemoteCreationResponseCopyWithImpl<T, $Res>
    implements _$NoConnectionCopyWith<T, $Res> {
  __$NoConnectionCopyWithImpl(
      _NoConnection<T> _value, $Res Function(_NoConnection<T>) _then)
      : super(_value, (v) => _then(v as _NoConnection<T>));

  @override
  _NoConnection<T> get _value => super._value as _NoConnection<T>;
}

/// @nodoc

class _$_NoConnection<T> extends _NoConnection<T> {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'RemoteCreationResponse<$T>.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) validationError,
    required TResult Function(T data) created,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? validationError,
    TResult Function(T data)? created,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ValidationError<T> value) validationError,
    required TResult Function(_Created<T> value) created,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ValidationError<T> value)? validationError,
    TResult Function(_Created<T> value)? created,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection<T> extends RemoteCreationResponse<T> {
  const factory _NoConnection() = _$_NoConnection<T>;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$ValidationErrorCopyWith<T, $Res> {
  factory _$ValidationErrorCopyWith(
          _ValidationError<T> value, $Res Function(_ValidationError<T>) then) =
      __$ValidationErrorCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$ValidationErrorCopyWithImpl<T, $Res>
    extends _$RemoteCreationResponseCopyWithImpl<T, $Res>
    implements _$ValidationErrorCopyWith<T, $Res> {
  __$ValidationErrorCopyWithImpl(
      _ValidationError<T> _value, $Res Function(_ValidationError<T>) _then)
      : super(_value, (v) => _then(v as _ValidationError<T>));

  @override
  _ValidationError<T> get _value => super._value as _ValidationError<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ValidationError<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidationError<T> extends _ValidationError<T> {
  const _$_ValidationError({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'RemoteCreationResponse<$T>.validationError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidationError<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ValidationErrorCopyWith<T, _ValidationError<T>> get copyWith =>
      __$ValidationErrorCopyWithImpl<T, _ValidationError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) validationError,
    required TResult Function(T data) created,
  }) {
    return validationError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? validationError,
    TResult Function(T data)? created,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ValidationError<T> value) validationError,
    required TResult Function(_Created<T> value) created,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ValidationError<T> value)? validationError,
    TResult Function(_Created<T> value)? created,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class _ValidationError<T> extends RemoteCreationResponse<T> {
  const factory _ValidationError({required String message}) =
      _$_ValidationError<T>;
  const _ValidationError._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValidationErrorCopyWith<T, _ValidationError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatedCopyWith<T, $Res> {
  factory _$CreatedCopyWith(
          _Created<T> value, $Res Function(_Created<T>) then) =
      __$CreatedCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$CreatedCopyWithImpl<T, $Res>
    extends _$RemoteCreationResponseCopyWithImpl<T, $Res>
    implements _$CreatedCopyWith<T, $Res> {
  __$CreatedCopyWithImpl(_Created<T> _value, $Res Function(_Created<T>) _then)
      : super(_value, (v) => _then(v as _Created<T>));

  @override
  _Created<T> get _value => super._value as _Created<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Created<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Created<T> extends _Created<T> {
  const _$_Created(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'RemoteCreationResponse<$T>.created(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Created<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CreatedCopyWith<T, _Created<T>> get copyWith =>
      __$CreatedCopyWithImpl<T, _Created<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) validationError,
    required TResult Function(T data) created,
  }) {
    return created(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? validationError,
    TResult Function(T data)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ValidationError<T> value) validationError,
    required TResult Function(_Created<T> value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ValidationError<T> value)? validationError,
    TResult Function(_Created<T> value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created<T> extends RemoteCreationResponse<T> {
  const factory _Created(T data) = _$_Created<T>;
  const _Created._() : super._();

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreatedCopyWith<T, _Created<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
