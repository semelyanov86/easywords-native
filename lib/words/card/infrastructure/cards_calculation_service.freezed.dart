// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cards_calculation_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardsCalculationServiceTearOff {
  const _$CardsCalculationServiceTearOff();

  _CardsCalculationService call(
      {int index = 0, int current = 0, List<Word> words = const []}) {
    return _CardsCalculationService(
      index: index,
      current: current,
      words: words,
    );
  }
}

/// @nodoc
const $CardsCalculationService = _$CardsCalculationServiceTearOff();

/// @nodoc
mixin _$CardsCalculationService {
  int get index => throw _privateConstructorUsedError;
  int get current => throw _privateConstructorUsedError;
  List<Word> get words => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardsCalculationServiceCopyWith<CardsCalculationService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsCalculationServiceCopyWith<$Res> {
  factory $CardsCalculationServiceCopyWith(CardsCalculationService value,
          $Res Function(CardsCalculationService) then) =
      _$CardsCalculationServiceCopyWithImpl<$Res>;
  $Res call({int index, int current, List<Word> words});
}

/// @nodoc
class _$CardsCalculationServiceCopyWithImpl<$Res>
    implements $CardsCalculationServiceCopyWith<$Res> {
  _$CardsCalculationServiceCopyWithImpl(this._value, this._then);

  final CardsCalculationService _value;
  // ignore: unused_field
  final $Res Function(CardsCalculationService) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? current = freezed,
    Object? words = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ));
  }
}

/// @nodoc
abstract class _$CardsCalculationServiceCopyWith<$Res>
    implements $CardsCalculationServiceCopyWith<$Res> {
  factory _$CardsCalculationServiceCopyWith(_CardsCalculationService value,
          $Res Function(_CardsCalculationService) then) =
      __$CardsCalculationServiceCopyWithImpl<$Res>;
  @override
  $Res call({int index, int current, List<Word> words});
}

/// @nodoc
class __$CardsCalculationServiceCopyWithImpl<$Res>
    extends _$CardsCalculationServiceCopyWithImpl<$Res>
    implements _$CardsCalculationServiceCopyWith<$Res> {
  __$CardsCalculationServiceCopyWithImpl(_CardsCalculationService _value,
      $Res Function(_CardsCalculationService) _then)
      : super(_value, (v) => _then(v as _CardsCalculationService));

  @override
  _CardsCalculationService get _value =>
      super._value as _CardsCalculationService;

  @override
  $Res call({
    Object? index = freezed,
    Object? current = freezed,
    Object? words = freezed,
  }) {
    return _then(_CardsCalculationService(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ));
  }
}

/// @nodoc

class _$_CardsCalculationService extends _CardsCalculationService {
  const _$_CardsCalculationService(
      {this.index = 0, this.current = 0, this.words = const []})
      : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int index;
  @JsonKey(defaultValue: 0)
  @override
  final int current;
  @JsonKey(defaultValue: const [])
  @override
  final List<Word> words;

  @override
  String toString() {
    return 'CardsCalculationService(index: $index, current: $current, words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardsCalculationService &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(words);

  @JsonKey(ignore: true)
  @override
  _$CardsCalculationServiceCopyWith<_CardsCalculationService> get copyWith =>
      __$CardsCalculationServiceCopyWithImpl<_CardsCalculationService>(
          this, _$identity);
}

abstract class _CardsCalculationService extends CardsCalculationService {
  const factory _CardsCalculationService(
      {int index, int current, List<Word> words}) = _$_CardsCalculationService;
  const _CardsCalculationService._() : super._();

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  int get current => throw _privateConstructorUsedError;
  @override
  List<Word> get words => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardsCalculationServiceCopyWith<_CardsCalculationService> get copyWith =>
      throw _privateConstructorUsedError;
}
