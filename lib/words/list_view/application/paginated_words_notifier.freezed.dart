// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'paginated_words_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginatedWordsStateTearOff {
  const _$PaginatedWordsStateTearOff();

  _Initial initial(Fresh<List<Word>> words) {
    return _Initial(
      words,
    );
  }

  _LoadInProgress loadInProgress(Fresh<List<Word>> words, int itemsPerPage) {
    return _LoadInProgress(
      words,
      itemsPerPage,
    );
  }

  _LoadSuccess loadSuccess(Fresh<List<Word>> words,
      {required bool isNextPageAvailable}) {
    return _LoadSuccess(
      words,
      isNextPageAvailable: isNextPageAvailable,
    );
  }

  _LoadFailure loadFailure(Fresh<List<Word>> words, WordFailure failure) {
    return _LoadFailure(
      words,
      failure,
    );
  }
}

/// @nodoc
const $PaginatedWordsState = _$PaginatedWordsStateTearOff();

/// @nodoc
mixin _$PaginatedWordsState {
  Fresh<List<Word>> get words => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> words) initial,
    required TResult Function(Fresh<List<Word>> words, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> words, WordFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> words)? initial,
    TResult Function(Fresh<List<Word>> words, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> words, WordFailure failure)? loadFailure,
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
  $PaginatedWordsStateCopyWith<PaginatedWordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedWordsStateCopyWith<$Res> {
  factory $PaginatedWordsStateCopyWith(
          PaginatedWordsState value, $Res Function(PaginatedWordsState) then) =
      _$PaginatedWordsStateCopyWithImpl<$Res>;
  $Res call({Fresh<List<Word>> words});

  $FreshCopyWith<List<Word>, $Res> get words;
}

/// @nodoc
class _$PaginatedWordsStateCopyWithImpl<$Res>
    implements $PaginatedWordsStateCopyWith<$Res> {
  _$PaginatedWordsStateCopyWithImpl(this._value, this._then);

  final PaginatedWordsState _value;
  // ignore: unused_field
  final $Res Function(PaginatedWordsState) _then;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_value.copyWith(
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
    ));
  }

  @override
  $FreshCopyWith<List<Word>, $Res> get words {
    return $FreshCopyWith<List<Word>, $Res>(_value.words, (value) {
      return _then(_value.copyWith(words: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $PaginatedWordsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> words});

  @override
  $FreshCopyWith<List<Word>, $Res> get words;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaginatedWordsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_Initial(
      words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.words) : super._();

  @override
  final Fresh<List<Word>> words;

  @override
  String toString() {
    return 'PaginatedWordsState.initial(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(words);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> words) initial,
    required TResult Function(Fresh<List<Word>> words, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> words, WordFailure failure)
        loadFailure,
  }) {
    return initial(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> words)? initial,
    TResult Function(Fresh<List<Word>> words, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> words, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(words);
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

abstract class _Initial extends PaginatedWordsState {
  const factory _Initial(Fresh<List<Word>> words) = _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<Word>> get words => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res>
    implements $PaginatedWordsStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> words, int itemsPerPage});

  @override
  $FreshCopyWith<List<Word>, $Res> get words;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PaginatedWordsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? words = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(_LoadInProgress(
      words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
      itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.words, this.itemsPerPage) : super._();

  @override
  final Fresh<List<Word>> words;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'PaginatedWordsState.loadInProgress(words: $words, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                const DeepCollectionEquality()
                    .equals(other.itemsPerPage, itemsPerPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(words) ^
      const DeepCollectionEquality().hash(itemsPerPage);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> words) initial,
    required TResult Function(Fresh<List<Word>> words, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> words, WordFailure failure)
        loadFailure,
  }) {
    return loadInProgress(words, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> words)? initial,
    TResult Function(Fresh<List<Word>> words, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> words, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(words, itemsPerPage);
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

abstract class _LoadInProgress extends PaginatedWordsState {
  const factory _LoadInProgress(Fresh<List<Word>> words, int itemsPerPage) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<Word>> get words => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res>
    implements $PaginatedWordsStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> words, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<Word>, $Res> get words;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaginatedWordsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? words = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_LoadSuccess(
      words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Word>>,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.words, {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<Word>> words;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PaginatedWordsState.loadSuccess(words: $words, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isNextPageAvailable, isNextPageAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(words) ^
      const DeepCollectionEquality().hash(isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> words) initial,
    required TResult Function(Fresh<List<Word>> words, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> words, WordFailure failure)
        loadFailure,
  }) {
    return loadSuccess(words, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> words)? initial,
    TResult Function(Fresh<List<Word>> words, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> words, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(words, isNextPageAvailable);
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

abstract class _LoadSuccess extends PaginatedWordsState {
  const factory _LoadSuccess(Fresh<List<Word>> words,
      {required bool isNextPageAvailable}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<Word>> get words => throw _privateConstructorUsedError;
  bool get isNextPageAvailable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res>
    implements $PaginatedWordsStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<Word>> words, WordFailure failure});

  @override
  $FreshCopyWith<List<Word>, $Res> get words;
  $WordFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PaginatedWordsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? words = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
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
  const _$_LoadFailure(this.words, this.failure) : super._();

  @override
  final Fresh<List<Word>> words;
  @override
  final WordFailure failure;

  @override
  String toString() {
    return 'PaginatedWordsState.loadFailure(words: $words, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(words) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Word>> words) initial,
    required TResult Function(Fresh<List<Word>> words, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<Word>> words, WordFailure failure)
        loadFailure,
  }) {
    return loadFailure(words, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Word>> words)? initial,
    TResult Function(Fresh<List<Word>> words, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<Word>> words, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Word>> words, WordFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(words, failure);
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

abstract class _LoadFailure extends PaginatedWordsState {
  const factory _LoadFailure(Fresh<List<Word>> words, WordFailure failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<Word>> get words => throw _privateConstructorUsedError;
  WordFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
