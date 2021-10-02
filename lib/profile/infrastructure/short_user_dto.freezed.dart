// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'short_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortUserDTO _$ShortUserDTOFromJson(Map<String, dynamic> json) {
  return _ShortUserDTO.fromJson(json);
}

/// @nodoc
class _$ShortUserDTOTearOff {
  const _$ShortUserDTOTearOff();

  _ShortUserDTO call({required int id, required String name}) {
    return _ShortUserDTO(
      id: id,
      name: name,
    );
  }

  ShortUserDTO fromJson(Map<String, Object> json) {
    return ShortUserDTO.fromJson(json);
  }
}

/// @nodoc
const $ShortUserDTO = _$ShortUserDTOTearOff();

/// @nodoc
mixin _$ShortUserDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortUserDTOCopyWith<ShortUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortUserDTOCopyWith<$Res> {
  factory $ShortUserDTOCopyWith(
          ShortUserDTO value, $Res Function(ShortUserDTO) then) =
      _$ShortUserDTOCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ShortUserDTOCopyWithImpl<$Res> implements $ShortUserDTOCopyWith<$Res> {
  _$ShortUserDTOCopyWithImpl(this._value, this._then);

  final ShortUserDTO _value;
  // ignore: unused_field
  final $Res Function(ShortUserDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$ShortUserDTOCopyWith<$Res>
    implements $ShortUserDTOCopyWith<$Res> {
  factory _$ShortUserDTOCopyWith(
          _ShortUserDTO value, $Res Function(_ShortUserDTO) then) =
      __$ShortUserDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$ShortUserDTOCopyWithImpl<$Res> extends _$ShortUserDTOCopyWithImpl<$Res>
    implements _$ShortUserDTOCopyWith<$Res> {
  __$ShortUserDTOCopyWithImpl(
      _ShortUserDTO _value, $Res Function(_ShortUserDTO) _then)
      : super(_value, (v) => _then(v as _ShortUserDTO));

  @override
  _ShortUserDTO get _value => super._value as _ShortUserDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ShortUserDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShortUserDTO extends _ShortUserDTO {
  const _$_ShortUserDTO({required this.id, required this.name}) : super._();

  factory _$_ShortUserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ShortUserDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ShortUserDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortUserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ShortUserDTOCopyWith<_ShortUserDTO> get copyWith =>
      __$ShortUserDTOCopyWithImpl<_ShortUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShortUserDTOToJson(this);
  }
}

abstract class _ShortUserDTO extends ShortUserDTO {
  const factory _ShortUserDTO({required int id, required String name}) =
      _$_ShortUserDTO;
  const _ShortUserDTO._() : super._();

  factory _ShortUserDTO.fromJson(Map<String, dynamic> json) =
      _$_ShortUserDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortUserDTOCopyWith<_ShortUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
