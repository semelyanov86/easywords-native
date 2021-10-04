// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cards_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardsStateTearOff {
  const _$CardsStateTearOff();

  _Initial initial(Fresh<List<Word>> cards) {
    return _Initial(
      cards,
    );
  }

  _LoadInProgress loadInProgress(Fresh<List<Word>> cards) {
    return _LoadInProgress(
      cards,
    );
  }

  _LoadSuccess loadSuccess(Fresh<List<Word>> cards,
      {required bool isNexPageAvailable}) {
    return _LoadSuccess(
      cards,
      isNexPageAvailable: isNexPageAvailable,
    );
  }

  _LoadFailure loadFailure(Fresh<List<Word>> cards, WordFailure failure) {
    return _LoadFailure(
      cards,
      failure,
    );
  }
}

/// @nodoc
const $CardsState = _$CardsStateTearOff();

/// @nodoc
mixin _$CardsState {
  Fresh<List<Word>> get cards => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> cards) initial,
    required TResult Function(Fresh<List<Word>> cards) loadInProgress,
    required TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> cards, WordFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> cards)? initial,
    TResult Function(Fresh<List<Word>> cards)? loadInProgress,
    TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> cards, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardsStateCopyWith<CardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsStateCopyWith<$Res> {
  factory $CardsStateCopyWith(
          CardsState value, $Res Function(CardsState) then) =
      _$CardsStateCopyWithImpl<$Res>;
  $Res call({Fresh<List<Word>> cards});

  $FreshCopyWith<List<Word>, $Res> get cards;
}

/// @nodoc
class _$CardsStateCopyWithImpl<$Res> implements $CardsStateCopyWith<$Res> {
  _$CardsStateCopyWithImpl(this._value, this._then);

  final CardsState _value;
  // ignore: unused_field
  final $Res Function(CardsState) _then;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
    ));
  }

  @override
  $FreshCopyWith<List<Word>, $Res> get cards {
    return $FreshCopyWith<List<Word>, $Res>(_value.cards, (value) {
      return _then(_value.copyWith(cards: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $CardsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> cards});

  @override
  $FreshCopyWith<List<Word>, $Res> get cards;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_Initial(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.cards) : super._();

  @override
  final Fresh<List<Word>> cards;

  @override
  String toString() {
    return 'CardsState.initial(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> cards) initial,
    required TResult Function(Fresh<List<Word>> cards) loadInProgress,
    required TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> cards, WordFailure failure)
        loadFailure,
  }) {
    return initial(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> cards)? initial,
    TResult Function(Fresh<List<Word>> cards)? loadInProgress,
    TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> cards, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CardsState {
  const factory _Initial(Fresh<List<Word>> cards) = _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<Word>> get cards => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res>
    implements $CardsStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> cards});

  @override
  $FreshCopyWith<List<Word>, $Res> get cards;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_LoadInProgress(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.cards) : super._();

  @override
  final Fresh<List<Word>> cards;

  @override
  String toString() {
    return 'CardsState.loadInProgress(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> cards) initial,
    required TResult Function(Fresh<List<Word>> cards) loadInProgress,
    required TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> cards, WordFailure failure)
        loadFailure,
  }) {
    return loadInProgress(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> cards)? initial,
    TResult Function(Fresh<List<Word>> cards)? loadInProgress,
    TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> cards, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends CardsState {
  const factory _LoadInProgress(Fresh<List<Word>> cards) = _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<Word>> get cards => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res>
    implements $CardsStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> cards, bool isNexPageAvailable});

  @override
  $FreshCopyWith<List<Word>, $Res> get cards;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? cards = freezed,
    Object? isNexPageAvailable = freezed,
  }) {
    return _then(_LoadSuccess(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
      isNexPageAvailable: isNexPageAvailable == freezed
          ? _value.isNexPageAvailable
          : isNexPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.cards, {required this.isNexPageAvailable})
      : super._();

  @override
  final Fresh<List<Word>> cards;
  @override
  final bool isNexPageAvailable;

  @override
  String toString() {
    return 'CardsState.loadSuccess(cards: $cards, isNexPageAvailable: $isNexPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.isNexPageAvailable, isNexPageAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isNexPageAvailable, isNexPageAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(isNexPageAvailable);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> cards) initial,
    required TResult Function(Fresh<List<Word>> cards) loadInProgress,
    required TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> cards, WordFailure failure)
        loadFailure,
  }) {
    return loadSuccess(cards, isNexPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> cards)? initial,
    TResult Function(Fresh<List<Word>> cards)? loadInProgress,
    TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> cards, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(cards, isNexPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends CardsState {
  const factory _LoadSuccess(Fresh<List<Word>> cards,
      {required bool isNexPageAvailable}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<Word>> get cards => throw _privateConstructorUsedError;
  bool get isNexPageAvailable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res>
    implements $CardsStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> cards, WordFailure failure});

  @override
  $FreshCopyWith<List<Word>, $Res> get cards;
  $WordFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? cards = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WordFailure,
    ));
  }

  @override
  $WordFailureCopyWith<$Res> get failure {
    return $WordFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.cards, this.failure) : super._();

  @override
  final Fresh<List<Word>> cards;
  @override
  final WordFailure failure;

  @override
  String toString() {
    return 'CardsState.loadFailure(cards: $cards, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> cards) initial,
    required TResult Function(Fresh<List<Word>> cards) loadInProgress,
    required TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> cards, WordFailure failure)
        loadFailure,
  }) {
    return loadFailure(cards, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> cards)? initial,
    TResult Function(Fresh<List<Word>> cards)? loadInProgress,
    TResult Function(Fresh<List<Word>> cards, bool isNexPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> cards, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(cards, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends CardsState {
  const factory _LoadFailure(Fresh<List<Word>> cards, WordFailure failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<Word>> get cards => throw _privateConstructorUsedError;
  WordFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
