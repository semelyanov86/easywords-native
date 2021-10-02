// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'short_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShortUserTearOff {
  const _$ShortUserTearOff();

  _ShortUser call({required int id, required String name}) {
    return _ShortUser(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $ShortUser = _$ShortUserTearOff();

/// @nodoc
mixin _$ShortUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortUserCopyWith<ShortUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortUserCopyWith<$Res> {
  factory $ShortUserCopyWith(ShortUser value, $Res Function(ShortUser) then) =
      _$ShortUserCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ShortUserCopyWithImpl<$Res> implements $ShortUserCopyWith<$Res> {
  _$ShortUserCopyWithImpl(this._value, this._then);

  final ShortUser _value;
  // ignore: unused_field
  final $Res Function(ShortUser) _then;

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
abstract class _$ShortUserCopyWith<$Res> implements $ShortUserCopyWith<$Res> {
  factory _$ShortUserCopyWith(
          _ShortUser value, $Res Function(_ShortUser) then) =
      __$ShortUserCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$ShortUserCopyWithImpl<$Res> extends _$ShortUserCopyWithImpl<$Res>
    implements _$ShortUserCopyWith<$Res> {
  __$ShortUserCopyWithImpl(_ShortUser _value, $Res Function(_ShortUser) _then)
      : super(_value, (v) => _then(v as _ShortUser));

  @override
  _ShortUser get _value => super._value as _ShortUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ShortUser(
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

class _$_ShortUser extends _ShortUser {
  const _$_ShortUser({required this.id, required this.name}) : super._();

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ShortUser(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortUser &&
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
  _$ShortUserCopyWith<_ShortUser> get copyWith =>
      __$ShortUserCopyWithImpl<_ShortUser>(this, _$identity);
}

abstract class _ShortUser extends ShortUser {
  const factory _ShortUser({required int id, required String name}) =
      _$_ShortUser;
  const _ShortUser._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortUserCopyWith<_ShortUser> get copyWith =>
      throw _privateConstructorUsedError;
}
