// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_card_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateCardStateTearOff {
  const _$CreateCardStateTearOff();

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Fresh<Word> word) {
    return _LoadSuccess(
      word,
    );
  }

  _LoadFailure loadFailure(Fresh<Word> word, WordFailure failure) {
    return _LoadFailure(
      word,
      failure,
    );
  }

  _ValidationFailure validationFailure(
      Fresh<Word> word, ValidationFailure failure) {
    return _ValidationFailure(
      word,
      failure,
    );
  }
}

/// @nodoc
const $CreateCardState = _$CreateCardStateTearOff();

/// @nodoc
mixin _$CreateCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(Fresh<Word> word) loadSuccess,
    required TResult Function(Fresh<Word> word, WordFailure failure)
        loadFailure,
    required TResult Function(Fresh<Word> word, ValidationFailure failure)
        validationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(Fresh<Word> word)? loadSuccess,
    TResult Function(Fresh<Word> word, WordFailure failure)? loadFailure,
    TResult Function(Fresh<Word> word, ValidationFailure failure)?
        validationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ValidationFailure value) validationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ValidationFailure value)? validationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCardStateCopyWith<$Res> {
  factory $CreateCardStateCopyWith(
          CreateCardState value, $Res Function(CreateCardState) then) =
      _$CreateCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCardStateCopyWithImpl<$Res>
    implements $CreateCardStateCopyWith<$Res> {
  _$CreateCardStateCopyWithImpl(this._value, this._then);

  final CreateCardState _value;
  // ignore: unused_field
  final $Res Function(CreateCardState) _then;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$CreateCardStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress() : super._();

  @override
  String toString() {
    return 'CreateCardState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(Fresh<Word> word) loadSuccess,
    required TResult Function(Fresh<Word> word, WordFailure failure)
        loadFailure,
    required TResult Function(Fresh<Word> word, ValidationFailure failure)
        validationFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(Fresh<Word> word)? loadSuccess,
    TResult Function(Fresh<Word> word, WordFailure failure)? loadFailure,
    TResult Function(Fresh<Word> word, ValidationFailure failure)?
        validationFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ValidationFailure value) validationFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ValidationFailure value)? validationFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends CreateCardState {
  const factory _LoadInProgress() = _$_LoadInProgress;
  const _LoadInProgress._() : super._();
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Fresh<Word> word});

  $FreshCopyWith<Word, $Res> get word;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CreateCardStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_LoadSuccess(
      word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Fresh<Word>,
    ));
  }

  @override
  $FreshCopyWith<Word, $Res> get word {
    return $FreshCopyWith<Word, $Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.word) : super._();

  @override
  final Fresh<Word> word;

  @override
  String toString() {
    return 'CreateCardState.loadSuccess(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(word);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(Fresh<Word> word) loadSuccess,
    required TResult Function(Fresh<Word> word, WordFailure failure)
        loadFailure,
    required TResult Function(Fresh<Word> word, ValidationFailure failure)
        validationFailure,
  }) {
    return loadSuccess(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(Fresh<Word> word)? loadSuccess,
    TResult Function(Fresh<Word> word, WordFailure failure)? loadFailure,
    TResult Function(Fresh<Word> word, ValidationFailure failure)?
        validationFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ValidationFailure value) validationFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ValidationFailure value)? validationFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends CreateCardState {
  const factory _LoadSuccess(Fresh<Word> word) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  Fresh<Word> get word => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({Fresh<Word> word, WordFailure failure});

  $FreshCopyWith<Word, $Res> get word;
  $WordFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CreateCardStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? word = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Fresh<Word>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WordFailure,
    ));
  }

  @override
  $FreshCopyWith<Word, $Res> get word {
    return $FreshCopyWith<Word, $Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
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
  const _$_LoadFailure(this.word, this.failure) : super._();

  @override
  final Fresh<Word> word;
  @override
  final WordFailure failure;

  @override
  String toString() {
    return 'CreateCardState.loadFailure(word: $word, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(Fresh<Word> word) loadSuccess,
    required TResult Function(Fresh<Word> word, WordFailure failure)
        loadFailure,
    required TResult Function(Fresh<Word> word, ValidationFailure failure)
        validationFailure,
  }) {
    return loadFailure(word, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(Fresh<Word> word)? loadSuccess,
    TResult Function(Fresh<Word> word, WordFailure failure)? loadFailure,
    TResult Function(Fresh<Word> word, ValidationFailure failure)?
        validationFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(word, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ValidationFailure value) validationFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ValidationFailure value)? validationFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends CreateCardState {
  const factory _LoadFailure(Fresh<Word> word, WordFailure failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  Fresh<Word> get word => throw _privateConstructorUsedError;
  WordFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidationFailureCopyWith<$Res> {
  factory _$ValidationFailureCopyWith(
          _ValidationFailure value, $Res Function(_ValidationFailure) then) =
      __$ValidationFailureCopyWithImpl<$Res>;
  $Res call({Fresh<Word> word, ValidationFailure failure});

  $FreshCopyWith<Word, $Res> get word;
  $ValidationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ValidationFailureCopyWithImpl<$Res>
    extends _$CreateCardStateCopyWithImpl<$Res>
    implements _$ValidationFailureCopyWith<$Res> {
  __$ValidationFailureCopyWithImpl(
      _ValidationFailure _value, $Res Function(_ValidationFailure) _then)
      : super(_value, (v) => _then(v as _ValidationFailure));

  @override
  _ValidationFailure get _value => super._value as _ValidationFailure;

  @override
  $Res call({
    Object? word = freezed,
    Object? failure = freezed,
  }) {
    return _then(_ValidationFailure(
      word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Fresh<Word>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValidationFailure,
    ));
  }

  @override
  $FreshCopyWith<Word, $Res> get word {
    return $FreshCopyWith<Word, $Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }

  @override
  $ValidationFailureCopyWith<$Res> get failure {
    return $ValidationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_ValidationFailure extends _ValidationFailure {
  const _$_ValidationFailure(this.word, this.failure) : super._();

  @override
  final Fresh<Word> word;
  @override
  final ValidationFailure failure;

  @override
  String toString() {
    return 'CreateCardState.validationFailure(word: $word, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidationFailure &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ValidationFailureCopyWith<_ValidationFailure> get copyWith =>
      __$ValidationFailureCopyWithImpl<_ValidationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(Fresh<Word> word) loadSuccess,
    required TResult Function(Fresh<Word> word, WordFailure failure)
        loadFailure,
    required TResult Function(Fresh<Word> word, ValidationFailure failure)
        validationFailure,
  }) {
    return validationFailure(word, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(Fresh<Word> word)? loadSuccess,
    TResult Function(Fresh<Word> word, WordFailure failure)? loadFailure,
    TResult Function(Fresh<Word> word, ValidationFailure failure)?
        validationFailure,
    required TResult orElse(),
  }) {
    if (validationFailure != null) {
      return validationFailure(word, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ValidationFailure value) validationFailure,
  }) {
    return validationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ValidationFailure value)? validationFailure,
    required TResult orElse(),
  }) {
    if (validationFailure != null) {
      return validationFailure(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailure extends CreateCardState {
  const factory _ValidationFailure(
      Fresh<Word> word, ValidationFailure failure) = _$_ValidationFailure;
  const _ValidationFailure._() : super._();

  Fresh<Word> get word => throw _privateConstructorUsedError;
  ValidationFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValidationFailureCopyWith<_ValidationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
