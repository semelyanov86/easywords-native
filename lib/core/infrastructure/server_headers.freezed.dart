// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'server_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerHeaders _$ServerHeadersFromJson(Map<String, dynamic> json) {
  return _ServerHeaders.fromJson(json);
}

/// @nodoc
class _$ServerHeadersTearOff {
  const _$ServerHeadersTearOff();

  _ServerHeaders call({String? etag, int? last_page}) {
    return _ServerHeaders(
      etag: etag,
      last_page: last_page,
    );
  }

  ServerHeaders fromJson(Map<String, Object> json) {
    return ServerHeaders.fromJson(json);
  }
}

/// @nodoc
const $ServerHeaders = _$ServerHeadersTearOff();

/// @nodoc
mixin _$ServerHeaders {
  String? get etag => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerHeadersCopyWith<ServerHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerHeadersCopyWith<$Res> {
  factory $ServerHeadersCopyWith(
          ServerHeaders value, $Res Function(ServerHeaders) then) =
      _$ServerHeadersCopyWithImpl<$Res>;
  $Res call({String? etag, int? last_page});
}

/// @nodoc
class _$ServerHeadersCopyWithImpl<$Res>
    implements $ServerHeadersCopyWith<$Res> {
  _$ServerHeadersCopyWithImpl(this._value, this._then);

  final ServerHeaders _value;
  // ignore: unused_field
  final $Res Function(ServerHeaders) _then;

  @override
  $Res call({
    Object? etag = freezed,
    Object? last_page = freezed,
  }) {
    return _then(_value.copyWith(
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      last_page: last_page == freezed
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ServerHeadersCopyWith<$Res>
    implements $ServerHeadersCopyWith<$Res> {
  factory _$ServerHeadersCopyWith(
          _ServerHeaders value, $Res Function(_ServerHeaders) then) =
      __$ServerHeadersCopyWithImpl<$Res>;
  @override
  $Res call({String? etag, int? last_page});
}

/// @nodoc
class __$ServerHeadersCopyWithImpl<$Res>
    extends _$ServerHeadersCopyWithImpl<$Res>
    implements _$ServerHeadersCopyWith<$Res> {
  __$ServerHeadersCopyWithImpl(
      _ServerHeaders _value, $Res Function(_ServerHeaders) _then)
      : super(_value, (v) => _then(v as _ServerHeaders));

  @override
  _ServerHeaders get _value => super._value as _ServerHeaders;

  @override
  $Res call({
    Object? etag = freezed,
    Object? last_page = freezed,
  }) {
    return _then(_ServerHeaders(
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      last_page: last_page == freezed
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerHeaders extends _ServerHeaders {
  const _$_ServerHeaders({this.etag, this.last_page}) : super._();

  factory _$_ServerHeaders.fromJson(Map<String, dynamic> json) =>
      _$_$_ServerHeadersFromJson(json);

  @override
  final String? etag;
  @override
  final int? last_page;

  @override
  String toString() {
    return 'ServerHeaders(etag: $etag, last_page: $last_page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerHeaders &&
            (identical(other.etag, etag) ||
                const DeepCollectionEquality().equals(other.etag, etag)) &&
            (identical(other.last_page, last_page) ||
                const DeepCollectionEquality()
                    .equals(other.last_page, last_page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(etag) ^
      const DeepCollectionEquality().hash(last_page);

  @JsonKey(ignore: true)
  @override
  _$ServerHeadersCopyWith<_ServerHeaders> get copyWith =>
      __$ServerHeadersCopyWithImpl<_ServerHeaders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServerHeadersToJson(this);
  }
}

abstract class _ServerHeaders extends ServerHeaders {
  const factory _ServerHeaders({String? etag, int? last_page}) =
      _$_ServerHeaders;
  const _ServerHeaders._() : super._();

  factory _ServerHeaders.fromJson(Map<String, dynamic> json) =
      _$_ServerHeaders.fromJson;

  @override
  String? get etag => throw _privateConstructorUsedError;
  @override
  int? get last_page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerHeadersCopyWith<_ServerHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}
