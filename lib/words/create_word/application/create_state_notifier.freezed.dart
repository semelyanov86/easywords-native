// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateStateTearOff {
  const _$CreateStateTearOff();

  _CreateState call(
      {String original = '', String translated = '', String language = ''}) {
    return _CreateState(
      original: original,
      translated: translated,
      language: language,
    );
  }
}

/// @nodoc
const $CreateState = _$CreateStateTearOff();

/// @nodoc
mixin _$CreateState {
  String get original => throw _privateConstructorUsedError;
  String get translated => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateStateCopyWith<CreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStateCopyWith<$Res> {
  factory $CreateStateCopyWith(
          CreateState value, $Res Function(CreateState) then) =
      _$CreateStateCopyWithImpl<$Res>;
  $Res call({String original, String translated, String language});
}

/// @nodoc
class _$CreateStateCopyWithImpl<$Res> implements $CreateStateCopyWith<$Res> {
  _$CreateStateCopyWithImpl(this._value, this._then);

  final CreateState _value;
  // ignore: unused_field
  final $Res Function(CreateState) _then;

  @override
  $Res call({
    Object? original = freezed,
    Object? translated = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      translated: translated == freezed
          ? _value.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateStateCopyWith<$Res>
    implements $CreateStateCopyWith<$Res> {
  factory _$CreateStateCopyWith(
          _CreateState value, $Res Function(_CreateState) then) =
      __$CreateStateCopyWithImpl<$Res>;
  @override
  $Res call({String original, String translated, String language});
}

/// @nodoc
class __$CreateStateCopyWithImpl<$Res> extends _$CreateStateCopyWithImpl<$Res>
    implements _$CreateStateCopyWith<$Res> {
  __$CreateStateCopyWithImpl(
      _CreateState _value, $Res Function(_CreateState) _then)
      : super(_value, (v) => _then(v as _CreateState));

  @override
  _CreateState get _value => super._value as _CreateState;

  @override
  $Res call({
    Object? original = freezed,
    Object? translated = freezed,
    Object? language = freezed,
  }) {
    return _then(_CreateState(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      translated: translated == freezed
          ? _value.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateState extends _CreateState {
  const _$_CreateState(
      {this.original = '', this.translated = '', this.language = ''})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String original;
  @JsonKey(defaultValue: '')
  @override
  final String translated;
  @JsonKey(defaultValue: '')
  @override
  final String language;

  @override
  String toString() {
    return 'CreateState(original: $original, translated: $translated, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateState &&
            (identical(other.original, original) ||
                const DeepCollectionEquality()
                    .equals(other.original, original)) &&
            (identical(other.translated, translated) ||
                const DeepCollectionEquality()
                    .equals(other.translated, translated)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(original) ^
      const DeepCollectionEquality().hash(translated) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$CreateStateCopyWith<_CreateState> get copyWith =>
      __$CreateStateCopyWithImpl<_CreateState>(this, _$identity);
}

abstract class _CreateState extends CreateState {
  const factory _CreateState(
      {String original, String translated, String language}) = _$_CreateState;
  const _CreateState._() : super._();

  @override
  String get original => throw _privateConstructorUsedError;
  @override
  String get translated => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateStateCopyWith<_CreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
