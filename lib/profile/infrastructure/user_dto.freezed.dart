// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {required int id,
      required String name,
      required String email,
      required String? profile_photo_path,
      @TimestampNullableConverter() required DateTime? created_at,
      @TimestampNullableConverter() required DateTime? updated_at,
      @TimestampNullableConverter() required DateTime? email_verified_at}) {
    return _UserDTO(
      id: id,
      name: name,
      email: email,
      profile_photo_path: profile_photo_path,
      created_at: created_at,
      updated_at: updated_at,
      email_verified_at: email_verified_at,
    );
  }

  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get profile_photo_path => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get created_at => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get email_verified_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String email,
      String? profile_photo_path,
      @TimestampNullableConverter() DateTime? created_at,
      @TimestampNullableConverter() DateTime? updated_at,
      @TimestampNullableConverter() DateTime? email_verified_at});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profile_photo_path = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? email_verified_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile_photo_path: profile_photo_path == freezed
          ? _value.profile_photo_path
          : profile_photo_path // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email_verified_at: email_verified_at == freezed
          ? _value.email_verified_at
          : email_verified_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String email,
      String? profile_photo_path,
      @TimestampNullableConverter() DateTime? created_at,
      @TimestampNullableConverter() DateTime? updated_at,
      @TimestampNullableConverter() DateTime? email_verified_at});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profile_photo_path = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? email_verified_at = freezed,
  }) {
    return _then(_UserDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile_photo_path: profile_photo_path == freezed
          ? _value.profile_photo_path
          : profile_photo_path // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email_verified_at: email_verified_at == freezed
          ? _value.email_verified_at
          : email_verified_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {required this.id,
      required this.name,
      required this.email,
      required this.profile_photo_path,
      @TimestampNullableConverter() required this.created_at,
      @TimestampNullableConverter() required this.updated_at,
      @TimestampNullableConverter() required this.email_verified_at})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? profile_photo_path;
  @override
  @TimestampNullableConverter()
  final DateTime? created_at;
  @override
  @TimestampNullableConverter()
  final DateTime? updated_at;
  @override
  @TimestampNullableConverter()
  final DateTime? email_verified_at;

  @override
  String toString() {
    return 'UserDTO(id: $id, name: $name, email: $email, profile_photo_path: $profile_photo_path, created_at: $created_at, updated_at: $updated_at, email_verified_at: $email_verified_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.profile_photo_path, profile_photo_path) ||
                const DeepCollectionEquality()
                    .equals(other.profile_photo_path, profile_photo_path)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.email_verified_at, email_verified_at) ||
                const DeepCollectionEquality()
                    .equals(other.email_verified_at, email_verified_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(profile_photo_path) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(email_verified_at);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
          {required int id,
          required String name,
          required String email,
          required String? profile_photo_path,
          @TimestampNullableConverter() required DateTime? created_at,
          @TimestampNullableConverter() required DateTime? updated_at,
          @TimestampNullableConverter() required DateTime? email_verified_at}) =
      _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get profile_photo_path => throw _privateConstructorUsedError;
  @override
  @TimestampNullableConverter()
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  @TimestampNullableConverter()
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  @TimestampNullableConverter()
  DateTime? get email_verified_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
