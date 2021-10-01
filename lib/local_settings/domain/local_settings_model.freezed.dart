// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'local_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalSettingsModel _$LocalSettingsModelFromJson(Map<String, dynamic> json) {
  return _LocalSettingsModel.fromJson(json);
}

/// @nodoc
class _$LocalSettingsModelTearOff {
  const _$LocalSettingsModelTearOff();

  _LocalSettingsModel call({String server = 'https://easywordsapp.ru/api'}) {
    return _LocalSettingsModel(
      server: server,
    );
  }

  LocalSettingsModel fromJson(Map<String, Object> json) {
    return LocalSettingsModel.fromJson(json);
  }
}

/// @nodoc
const $LocalSettingsModel = _$LocalSettingsModelTearOff();

/// @nodoc
mixin _$LocalSettingsModel {
  String get server => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalSettingsModelCopyWith<LocalSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSettingsModelCopyWith<$Res> {
  factory $LocalSettingsModelCopyWith(
          LocalSettingsModel value, $Res Function(LocalSettingsModel) then) =
      _$LocalSettingsModelCopyWithImpl<$Res>;
  $Res call({String server});
}

/// @nodoc
class _$LocalSettingsModelCopyWithImpl<$Res>
    implements $LocalSettingsModelCopyWith<$Res> {
  _$LocalSettingsModelCopyWithImpl(this._value, this._then);

  final LocalSettingsModel _value;
  // ignore: unused_field
  final $Res Function(LocalSettingsModel) _then;

  @override
  $Res call({
    Object? server = freezed,
  }) {
    return _then(_value.copyWith(
      server: server == freezed
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocalSettingsModelCopyWith<$Res>
    implements $LocalSettingsModelCopyWith<$Res> {
  factory _$LocalSettingsModelCopyWith(
          _LocalSettingsModel value, $Res Function(_LocalSettingsModel) then) =
      __$LocalSettingsModelCopyWithImpl<$Res>;
  @override
  $Res call({String server});
}

/// @nodoc
class __$LocalSettingsModelCopyWithImpl<$Res>
    extends _$LocalSettingsModelCopyWithImpl<$Res>
    implements _$LocalSettingsModelCopyWith<$Res> {
  __$LocalSettingsModelCopyWithImpl(
      _LocalSettingsModel _value, $Res Function(_LocalSettingsModel) _then)
      : super(_value, (v) => _then(v as _LocalSettingsModel));

  @override
  _LocalSettingsModel get _value => super._value as _LocalSettingsModel;

  @override
  $Res call({
    Object? server = freezed,
  }) {
    return _then(_LocalSettingsModel(
      server: server == freezed
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalSettingsModel extends _LocalSettingsModel {
  const _$_LocalSettingsModel({this.server = 'https://easywordsapp.ru/api'})
      : super._();

  factory _$_LocalSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalSettingsModelFromJson(json);

  @JsonKey(defaultValue: 'https://easywordsapp.ru/api')
  @override
  final String server;

  @override
  String toString() {
    return 'LocalSettingsModel(server: $server)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalSettingsModel &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(server);

  @JsonKey(ignore: true)
  @override
  _$LocalSettingsModelCopyWith<_LocalSettingsModel> get copyWith =>
      __$LocalSettingsModelCopyWithImpl<_LocalSettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalSettingsModelToJson(this);
  }
}

abstract class _LocalSettingsModel extends LocalSettingsModel {
  const factory _LocalSettingsModel({String server}) = _$_LocalSettingsModel;
  const _LocalSettingsModel._() : super._();

  factory _LocalSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_LocalSettingsModel.fromJson;

  @override
  String get server => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocalSettingsModelCopyWith<_LocalSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
