// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'global_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GlobalSettingsDTO _$GlobalSettingsDTOFromJson(Map<String, dynamic> json) {
  return _GlobalSettingsDTO.fromJson(json);
}

/// @nodoc
class _$GlobalSettingsDTOTearOff {
  const _$GlobalSettingsDTOTearOff();

  _GlobalSettingsDTO call(
      {@JsonKey(fromJson: _parseInt) int paginate = 21,
      String default_language = 'DE',
      @JsonKey(fromJson: _parseBool) bool starred_enabled = false,
      @JsonKey(fromJson: _parseBool) bool known_enabled = false,
      @JsonKey(fromJson: _parseBool) bool fresh_first = true,
      @JsonKey(fromJson: _parseBool) bool show_shared = false,
      @JsonKey(fromJson: _parseBool) bool show_imported = true,
      String main_language = 'RU',
      List<String> languages_list = const [],
      @JsonKey(fromJson: _parseBool) bool latest_first = false}) {
    return _GlobalSettingsDTO(
      paginate: paginate,
      default_language: default_language,
      starred_enabled: starred_enabled,
      known_enabled: known_enabled,
      fresh_first: fresh_first,
      show_shared: show_shared,
      show_imported: show_imported,
      main_language: main_language,
      languages_list: languages_list,
      latest_first: latest_first,
    );
  }

  GlobalSettingsDTO fromJson(Map<String, Object> json) {
    return GlobalSettingsDTO.fromJson(json);
  }
}

/// @nodoc
const $GlobalSettingsDTO = _$GlobalSettingsDTOTearOff();

/// @nodoc
mixin _$GlobalSettingsDTO {
  @JsonKey(fromJson: _parseInt)
  int get paginate => throw _privateConstructorUsedError;
  String get default_language => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool get starred_enabled => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool get known_enabled => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool get fresh_first => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool get show_shared => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool get show_imported => throw _privateConstructorUsedError;
  String get main_language => throw _privateConstructorUsedError;
  List<String> get languages_list => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool get latest_first => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalSettingsDTOCopyWith<GlobalSettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalSettingsDTOCopyWith<$Res> {
  factory $GlobalSettingsDTOCopyWith(
          GlobalSettingsDTO value, $Res Function(GlobalSettingsDTO) then) =
      _$GlobalSettingsDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: _parseInt) int paginate,
      String default_language,
      @JsonKey(fromJson: _parseBool) bool starred_enabled,
      @JsonKey(fromJson: _parseBool) bool known_enabled,
      @JsonKey(fromJson: _parseBool) bool fresh_first,
      @JsonKey(fromJson: _parseBool) bool show_shared,
      @JsonKey(fromJson: _parseBool) bool show_imported,
      String main_language,
      List<String> languages_list,
      @JsonKey(fromJson: _parseBool) bool latest_first});
}

/// @nodoc
class _$GlobalSettingsDTOCopyWithImpl<$Res>
    implements $GlobalSettingsDTOCopyWith<$Res> {
  _$GlobalSettingsDTOCopyWithImpl(this._value, this._then);

  final GlobalSettingsDTO _value;
  // ignore: unused_field
  final $Res Function(GlobalSettingsDTO) _then;

  @override
  $Res call({
    Object? paginate = freezed,
    Object? default_language = freezed,
    Object? starred_enabled = freezed,
    Object? known_enabled = freezed,
    Object? fresh_first = freezed,
    Object? show_shared = freezed,
    Object? show_imported = freezed,
    Object? main_language = freezed,
    Object? languages_list = freezed,
    Object? latest_first = freezed,
  }) {
    return _then(_value.copyWith(
      paginate: paginate == freezed
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as int,
      default_language: default_language == freezed
          ? _value.default_language
          : default_language // ignore: cast_nullable_to_non_nullable
              as String,
      starred_enabled: starred_enabled == freezed
          ? _value.starred_enabled
          : starred_enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      known_enabled: known_enabled == freezed
          ? _value.known_enabled
          : known_enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      fresh_first: fresh_first == freezed
          ? _value.fresh_first
          : fresh_first // ignore: cast_nullable_to_non_nullable
              as bool,
      show_shared: show_shared == freezed
          ? _value.show_shared
          : show_shared // ignore: cast_nullable_to_non_nullable
              as bool,
      show_imported: show_imported == freezed
          ? _value.show_imported
          : show_imported // ignore: cast_nullable_to_non_nullable
              as bool,
      main_language: main_language == freezed
          ? _value.main_language
          : main_language // ignore: cast_nullable_to_non_nullable
              as String,
      languages_list: languages_list == freezed
          ? _value.languages_list
          : languages_list // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latest_first: latest_first == freezed
          ? _value.latest_first
          : latest_first // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GlobalSettingsDTOCopyWith<$Res>
    implements $GlobalSettingsDTOCopyWith<$Res> {
  factory _$GlobalSettingsDTOCopyWith(
          _GlobalSettingsDTO value, $Res Function(_GlobalSettingsDTO) then) =
      __$GlobalSettingsDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: _parseInt) int paginate,
      String default_language,
      @JsonKey(fromJson: _parseBool) bool starred_enabled,
      @JsonKey(fromJson: _parseBool) bool known_enabled,
      @JsonKey(fromJson: _parseBool) bool fresh_first,
      @JsonKey(fromJson: _parseBool) bool show_shared,
      @JsonKey(fromJson: _parseBool) bool show_imported,
      String main_language,
      List<String> languages_list,
      @JsonKey(fromJson: _parseBool) bool latest_first});
}

/// @nodoc
class __$GlobalSettingsDTOCopyWithImpl<$Res>
    extends _$GlobalSettingsDTOCopyWithImpl<$Res>
    implements _$GlobalSettingsDTOCopyWith<$Res> {
  __$GlobalSettingsDTOCopyWithImpl(
      _GlobalSettingsDTO _value, $Res Function(_GlobalSettingsDTO) _then)
      : super(_value, (v) => _then(v as _GlobalSettingsDTO));

  @override
  _GlobalSettingsDTO get _value => super._value as _GlobalSettingsDTO;

  @override
  $Res call({
    Object? paginate = freezed,
    Object? default_language = freezed,
    Object? starred_enabled = freezed,
    Object? known_enabled = freezed,
    Object? fresh_first = freezed,
    Object? show_shared = freezed,
    Object? show_imported = freezed,
    Object? main_language = freezed,
    Object? languages_list = freezed,
    Object? latest_first = freezed,
  }) {
    return _then(_GlobalSettingsDTO(
      paginate: paginate == freezed
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as int,
      default_language: default_language == freezed
          ? _value.default_language
          : default_language // ignore: cast_nullable_to_non_nullable
              as String,
      starred_enabled: starred_enabled == freezed
          ? _value.starred_enabled
          : starred_enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      known_enabled: known_enabled == freezed
          ? _value.known_enabled
          : known_enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      fresh_first: fresh_first == freezed
          ? _value.fresh_first
          : fresh_first // ignore: cast_nullable_to_non_nullable
              as bool,
      show_shared: show_shared == freezed
          ? _value.show_shared
          : show_shared // ignore: cast_nullable_to_non_nullable
              as bool,
      show_imported: show_imported == freezed
          ? _value.show_imported
          : show_imported // ignore: cast_nullable_to_non_nullable
              as bool,
      main_language: main_language == freezed
          ? _value.main_language
          : main_language // ignore: cast_nullable_to_non_nullable
              as String,
      languages_list: languages_list == freezed
          ? _value.languages_list
          : languages_list // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latest_first: latest_first == freezed
          ? _value.latest_first
          : latest_first // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GlobalSettingsDTO extends _GlobalSettingsDTO {
  const _$_GlobalSettingsDTO(
      {@JsonKey(fromJson: _parseInt) this.paginate = 21,
      this.default_language = 'DE',
      @JsonKey(fromJson: _parseBool) this.starred_enabled = false,
      @JsonKey(fromJson: _parseBool) this.known_enabled = false,
      @JsonKey(fromJson: _parseBool) this.fresh_first = true,
      @JsonKey(fromJson: _parseBool) this.show_shared = false,
      @JsonKey(fromJson: _parseBool) this.show_imported = true,
      this.main_language = 'RU',
      this.languages_list = const [],
      @JsonKey(fromJson: _parseBool) this.latest_first = false})
      : super._();

  factory _$_GlobalSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_GlobalSettingsDTOFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  final int paginate;
  @JsonKey(defaultValue: 'DE')
  @override
  final String default_language;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool starred_enabled;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool known_enabled;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool fresh_first;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool show_shared;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool show_imported;
  @JsonKey(defaultValue: 'RU')
  @override
  final String main_language;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> languages_list;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool latest_first;

  @override
  String toString() {
    return 'GlobalSettingsDTO(paginate: $paginate, default_language: $default_language, starred_enabled: $starred_enabled, known_enabled: $known_enabled, fresh_first: $fresh_first, show_shared: $show_shared, show_imported: $show_imported, main_language: $main_language, languages_list: $languages_list, latest_first: $latest_first)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GlobalSettingsDTO &&
            (identical(other.paginate, paginate) ||
                const DeepCollectionEquality()
                    .equals(other.paginate, paginate)) &&
            (identical(other.default_language, default_language) ||
                const DeepCollectionEquality()
                    .equals(other.default_language, default_language)) &&
            (identical(other.starred_enabled, starred_enabled) ||
                const DeepCollectionEquality()
                    .equals(other.starred_enabled, starred_enabled)) &&
            (identical(other.known_enabled, known_enabled) ||
                const DeepCollectionEquality()
                    .equals(other.known_enabled, known_enabled)) &&
            (identical(other.fresh_first, fresh_first) ||
                const DeepCollectionEquality()
                    .equals(other.fresh_first, fresh_first)) &&
            (identical(other.show_shared, show_shared) ||
                const DeepCollectionEquality()
                    .equals(other.show_shared, show_shared)) &&
            (identical(other.show_imported, show_imported) ||
                const DeepCollectionEquality()
                    .equals(other.show_imported, show_imported)) &&
            (identical(other.main_language, main_language) ||
                const DeepCollectionEquality()
                    .equals(other.main_language, main_language)) &&
            (identical(other.languages_list, languages_list) ||
                const DeepCollectionEquality()
                    .equals(other.languages_list, languages_list)) &&
            (identical(other.latest_first, latest_first) ||
                const DeepCollectionEquality()
                    .equals(other.latest_first, latest_first)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paginate) ^
      const DeepCollectionEquality().hash(default_language) ^
      const DeepCollectionEquality().hash(starred_enabled) ^
      const DeepCollectionEquality().hash(known_enabled) ^
      const DeepCollectionEquality().hash(fresh_first) ^
      const DeepCollectionEquality().hash(show_shared) ^
      const DeepCollectionEquality().hash(show_imported) ^
      const DeepCollectionEquality().hash(main_language) ^
      const DeepCollectionEquality().hash(languages_list) ^
      const DeepCollectionEquality().hash(latest_first);

  @JsonKey(ignore: true)
  @override
  _$GlobalSettingsDTOCopyWith<_GlobalSettingsDTO> get copyWith =>
      __$GlobalSettingsDTOCopyWithImpl<_GlobalSettingsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GlobalSettingsDTOToJson(this);
  }
}

abstract class _GlobalSettingsDTO extends GlobalSettingsDTO {
  const factory _GlobalSettingsDTO(
      {@JsonKey(fromJson: _parseInt) int paginate,
      String default_language,
      @JsonKey(fromJson: _parseBool) bool starred_enabled,
      @JsonKey(fromJson: _parseBool) bool known_enabled,
      @JsonKey(fromJson: _parseBool) bool fresh_first,
      @JsonKey(fromJson: _parseBool) bool show_shared,
      @JsonKey(fromJson: _parseBool) bool show_imported,
      String main_language,
      List<String> languages_list,
      @JsonKey(fromJson: _parseBool) bool latest_first}) = _$_GlobalSettingsDTO;
  const _GlobalSettingsDTO._() : super._();

  factory _GlobalSettingsDTO.fromJson(Map<String, dynamic> json) =
      _$_GlobalSettingsDTO.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int get paginate => throw _privateConstructorUsedError;
  @override
  String get default_language => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _parseBool)
  bool get starred_enabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _parseBool)
  bool get known_enabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _parseBool)
  bool get fresh_first => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _parseBool)
  bool get show_shared => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _parseBool)
  bool get show_imported => throw _privateConstructorUsedError;
  @override
  String get main_language => throw _privateConstructorUsedError;
  @override
  List<String> get languages_list => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _parseBool)
  bool get latest_first => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GlobalSettingsDTOCopyWith<_GlobalSettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
