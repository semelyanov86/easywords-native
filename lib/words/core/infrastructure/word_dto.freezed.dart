// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'word_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordDTO _$WordDTOFromJson(Map<String, dynamic> json) {
  return _WordDTO.fromJson(json);
}

/// @nodoc
class _$WordDTOTearOff {
  const _$WordDTOTearOff();

  _WordDTO call(
      {required int id,
      required String original,
      required String translated,
      @TimestampNullableConverter() DateTime? done_at = null,
      bool starred = false,
      required int user_id,
      required String language,
      required int views,
      @TimestampNullableConverter() DateTime? created_at = null}) {
    return _WordDTO(
      id: id,
      original: original,
      translated: translated,
      done_at: done_at,
      starred: starred,
      user_id: user_id,
      language: language,
      views: views,
      created_at: created_at,
    );
  }

  WordDTO fromJson(Map<String, Object> json) {
    return WordDTO.fromJson(json);
  }
}

/// @nodoc
const $WordDTO = _$WordDTOTearOff();

/// @nodoc
mixin _$WordDTO {
  int get id => throw _privateConstructorUsedError;
  String get original => throw _privateConstructorUsedError;
  String get translated => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get done_at => throw _privateConstructorUsedError;
  bool get starred => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordDTOCopyWith<WordDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordDTOCopyWith<$Res> {
  factory $WordDTOCopyWith(WordDTO value, $Res Function(WordDTO) then) =
      _$WordDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String original,
      String translated,
      @TimestampNullableConverter() DateTime? done_at,
      bool starred,
      int user_id,
      String language,
      int views,
      @TimestampNullableConverter() DateTime? created_at});
}

/// @nodoc
class _$WordDTOCopyWithImpl<$Res> implements $WordDTOCopyWith<$Res> {
  _$WordDTOCopyWithImpl(this._value, this._then);

  final WordDTO _value;
  // ignore: unused_field
  final $Res Function(WordDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? original = freezed,
    Object? translated = freezed,
    Object? done_at = freezed,
    Object? starred = freezed,
    Object? user_id = freezed,
    Object? language = freezed,
    Object? views = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      translated: translated == freezed
          ? _value.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as String,
      done_at: done_at == freezed
          ? _value.done_at
          : done_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starred: starred == freezed
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$WordDTOCopyWith<$Res> implements $WordDTOCopyWith<$Res> {
  factory _$WordDTOCopyWith(_WordDTO value, $Res Function(_WordDTO) then) =
      __$WordDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String original,
      String translated,
      @TimestampNullableConverter() DateTime? done_at,
      bool starred,
      int user_id,
      String language,
      int views,
      @TimestampNullableConverter() DateTime? created_at});
}

/// @nodoc
class __$WordDTOCopyWithImpl<$Res> extends _$WordDTOCopyWithImpl<$Res>
    implements _$WordDTOCopyWith<$Res> {
  __$WordDTOCopyWithImpl(_WordDTO _value, $Res Function(_WordDTO) _then)
      : super(_value, (v) => _then(v as _WordDTO));

  @override
  _WordDTO get _value => super._value as _WordDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? original = freezed,
    Object? translated = freezed,
    Object? done_at = freezed,
    Object? starred = freezed,
    Object? user_id = freezed,
    Object? language = freezed,
    Object? views = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_WordDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      translated: translated == freezed
          ? _value.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as String,
      done_at: done_at == freezed
          ? _value.done_at
          : done_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starred: starred == freezed
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordDTO extends _WordDTO {
  const _$_WordDTO(
      {required this.id,
      required this.original,
      required this.translated,
      @TimestampNullableConverter() this.done_at = null,
      this.starred = false,
      required this.user_id,
      required this.language,
      required this.views,
      @TimestampNullableConverter() this.created_at = null})
      : super._();

  factory _$_WordDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_WordDTOFromJson(json);

  @override
  final int id;
  @override
  final String original;
  @override
  final String translated;
  @JsonKey(defaultValue: null)
  @override
  @TimestampNullableConverter()
  final DateTime? done_at;
  @JsonKey(defaultValue: false)
  @override
  final bool starred;
  @override
  final int user_id;
  @override
  final String language;
  @override
  final int views;
  @JsonKey(defaultValue: null)
  @override
  @TimestampNullableConverter()
  final DateTime? created_at;

  @override
  String toString() {
    return 'WordDTO(id: $id, original: $original, translated: $translated, done_at: $done_at, starred: $starred, user_id: $user_id, language: $language, views: $views, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WordDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.original, original) ||
                const DeepCollectionEquality()
                    .equals(other.original, original)) &&
            (identical(other.translated, translated) ||
                const DeepCollectionEquality()
                    .equals(other.translated, translated)) &&
            (identical(other.done_at, done_at) ||
                const DeepCollectionEquality()
                    .equals(other.done_at, done_at)) &&
            (identical(other.starred, starred) ||
                const DeepCollectionEquality()
                    .equals(other.starred, starred)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(original) ^
      const DeepCollectionEquality().hash(translated) ^
      const DeepCollectionEquality().hash(done_at) ^
      const DeepCollectionEquality().hash(starred) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$WordDTOCopyWith<_WordDTO> get copyWith =>
      __$WordDTOCopyWithImpl<_WordDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WordDTOToJson(this);
  }
}

abstract class _WordDTO extends WordDTO {
  const factory _WordDTO(
      {required int id,
      required String original,
      required String translated,
      @TimestampNullableConverter() DateTime? done_at,
      bool starred,
      required int user_id,
      required String language,
      required int views,
      @TimestampNullableConverter() DateTime? created_at}) = _$_WordDTO;
  const _WordDTO._() : super._();

  factory _WordDTO.fromJson(Map<String, dynamic> json) = _$_WordDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get original => throw _privateConstructorUsedError;
  @override
  String get translated => throw _privateConstructorUsedError;
  @override
  @TimestampNullableConverter()
  DateTime? get done_at => throw _privateConstructorUsedError;
  @override
  bool get starred => throw _privateConstructorUsedError;
  @override
  int get user_id => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  int get views => throw _privateConstructorUsedError;
  @override
  @TimestampNullableConverter()
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WordDTOCopyWith<_WordDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
