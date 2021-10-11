// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'word_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WordFailureTearOff {
  const _$WordFailureTearOff();

  _Api api(int? errorCode) {
    return _Api(
      errorCode,
    );
  }

  _Validation validation(String message) {
    return _Validation(
      message,
    );
  }
}

/// @nodoc
const $WordFailure = _$WordFailureTearOff();

/// @nodoc
mixin _$WordFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode) api,
    required TResult Function(String message) validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode)? api,
    TResult Function(String message)? validation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Validation value) validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Validation value)? validation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordFailureCopyWith<$Res> {
  factory $WordFailureCopyWith(
          WordFailure value, $Res Function(WordFailure) then) =
      _$WordFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$WordFailureCopyWithImpl<$Res> implements $WordFailureCopyWith<$Res> {
  _$WordFailureCopyWithImpl(this._value, this._then);

  final WordFailure _value;
  // ignore: unused_field
  final $Res Function(WordFailure) _then;
}

/// @nodoc
abstract class _$ApiCopyWith<$Res> {
  factory _$ApiCopyWith(_Api value, $Res Function(_Api) then) =
      __$ApiCopyWithImpl<$Res>;
  $Res call({int? errorCode});
}

/// @nodoc
class __$ApiCopyWithImpl<$Res> extends _$WordFailureCopyWithImpl<$Res>
    implements _$ApiCopyWith<$Res> {
  __$ApiCopyWithImpl(_Api _value, $Res Function(_Api) _then)
      : super(_value, (v) => _then(v as _Api));

  @override
  _Api get _value => super._value as _Api;

  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(_Api(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Api extends _Api {
  const _$_Api(this.errorCode) : super._();

  @override
  final int? errorCode;

  @override
  String toString() {
    return 'WordFailure.api(errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Api &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorCode);

  @JsonKey(ignore: true)
  @override
  _$ApiCopyWith<_Api> get copyWith =>
      __$ApiCopyWithImpl<_Api>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode) api,
    required TResult Function(String message) validation,
  }) {
    return api(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode)? api,
    TResult Function(String message)? validation,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Validation value) validation,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Validation value)? validation,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _Api extends WordFailure {
  const factory _Api(int? errorCode) = _$_Api;
  const _Api._() : super._();

  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ApiCopyWith<_Api> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidationCopyWith<$Res> {
  factory _$ValidationCopyWith(
          _Validation value, $Res Function(_Validation) then) =
      __$ValidationCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ValidationCopyWithImpl<$Res> extends _$WordFailureCopyWithImpl<$Res>
    implements _$ValidationCopyWith<$Res> {
  __$ValidationCopyWithImpl(
      _Validation _value, $Res Function(_Validation) _then)
      : super(_value, (v) => _then(v as _Validation));

  @override
  _Validation get _value => super._value as _Validation;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Validation(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Validation extends _Validation {
  const _$_Validation(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'WordFailure.validation(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Validation &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ValidationCopyWith<_Validation> get copyWith =>
      __$ValidationCopyWithImpl<_Validation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode) api,
    required TResult Function(String message) validation,
  }) {
    return validation(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode)? api,
    TResult Function(String message)? validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Validation value) validation,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Validation value)? validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class _Validation extends WordFailure {
  const factory _Validation(String message) = _$_Validation;
  const _Validation._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValidationCopyWith<_Validation> get copyWith =>
      throw _privateConstructorUsedError;
}
