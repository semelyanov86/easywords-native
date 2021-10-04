// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'global_settings_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GlobalSettingsStateTearOff {
  const _$GlobalSettingsStateTearOff();

  _Initial initial(Fresh<GlobalSettings> settings) {
    return _Initial(
      settings,
    );
  }

  _LoadInProgress loadInProgress(Fresh<GlobalSettings> settings) {
    return _LoadInProgress(
      settings,
    );
  }

  _LoadSuccess loadSuccess(Fresh<GlobalSettings> settings) {
    return _LoadSuccess(
      settings,
    );
  }

  _LoadFailure loadFailure(
      Fresh<GlobalSettings> settings, GlobalSettingsFailure failure) {
    return _LoadFailure(
      settings,
      failure,
    );
  }
}

/// @nodoc
const $GlobalSettingsState = _$GlobalSettingsStateTearOff();

/// @nodoc
mixin _$GlobalSettingsState {
  Fresh<GlobalSettings> get settings => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<GlobalSettings> settings) initial,
    required TResult Function(Fresh<GlobalSettings> settings) loadInProgress,
    required TResult Function(Fresh<GlobalSettings> settings) loadSuccess,
    required TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<GlobalSettings> settings)? initial,
    TResult Function(Fresh<GlobalSettings> settings)? loadInProgress,
    TResult Function(Fresh<GlobalSettings> settings)? loadSuccess,
    TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)?
        loadFailure,
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
  $GlobalSettingsStateCopyWith<GlobalSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalSettingsStateCopyWith<$Res> {
  factory $GlobalSettingsStateCopyWith(
          GlobalSettingsState value, $Res Function(GlobalSettingsState) then) =
      _$GlobalSettingsStateCopyWithImpl<$Res>;
  $Res call({Fresh<GlobalSettings> settings});

  $FreshCopyWith<GlobalSettings, $Res> get settings;
}

/// @nodoc
class _$GlobalSettingsStateCopyWithImpl<$Res>
    implements $GlobalSettingsStateCopyWith<$Res> {
  _$GlobalSettingsStateCopyWithImpl(this._value, this._then);

  final GlobalSettingsState _value;
  // ignore: unused_field
  final $Res Function(GlobalSettingsState) _then;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Fresh<GlobalSettings>,
    ));
  }

  @override
  $FreshCopyWith<GlobalSettings, $Res> get settings {
    return $FreshCopyWith<GlobalSettings, $Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $GlobalSettingsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<GlobalSettings> settings});

  @override
  $FreshCopyWith<GlobalSettings, $Res> get settings;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$GlobalSettingsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_Initial(
      settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Fresh<GlobalSettings>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.settings) : super._();

  @override
  final Fresh<GlobalSettings> settings;

  @override
  String toString() {
    return 'GlobalSettingsState.initial(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<GlobalSettings> settings) initial,
    required TResult Function(Fresh<GlobalSettings> settings) loadInProgress,
    required TResult Function(Fresh<GlobalSettings> settings) loadSuccess,
    required TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)
        loadFailure,
  }) {
    return initial(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<GlobalSettings> settings)? initial,
    TResult Function(Fresh<GlobalSettings> settings)? loadInProgress,
    TResult Function(Fresh<GlobalSettings> settings)? loadSuccess,
    TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(settings);
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

abstract class _Initial extends GlobalSettingsState {
  const factory _Initial(Fresh<GlobalSettings> settings) = _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<GlobalSettings> get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res>
    implements $GlobalSettingsStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<GlobalSettings> settings});

  @override
  $FreshCopyWith<GlobalSettings, $Res> get settings;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$GlobalSettingsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_LoadInProgress(
      settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Fresh<GlobalSettings>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.settings) : super._();

  @override
  final Fresh<GlobalSettings> settings;

  @override
  String toString() {
    return 'GlobalSettingsState.loadInProgress(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<GlobalSettings> settings) initial,
    required TResult Function(Fresh<GlobalSettings> settings) loadInProgress,
    required TResult Function(Fresh<GlobalSettings> settings) loadSuccess,
    required TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)
        loadFailure,
  }) {
    return loadInProgress(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<GlobalSettings> settings)? initial,
    TResult Function(Fresh<GlobalSettings> settings)? loadInProgress,
    TResult Function(Fresh<GlobalSettings> settings)? loadSuccess,
    TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(settings);
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

abstract class _LoadInProgress extends GlobalSettingsState {
  const factory _LoadInProgress(Fresh<GlobalSettings> settings) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<GlobalSettings> get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res>
    implements $GlobalSettingsStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<GlobalSettings> settings});

  @override
  $FreshCopyWith<GlobalSettings, $Res> get settings;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$GlobalSettingsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_LoadSuccess(
      settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Fresh<GlobalSettings>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.settings) : super._();

  @override
  final Fresh<GlobalSettings> settings;

  @override
  String toString() {
    return 'GlobalSettingsState.loadSuccess(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<GlobalSettings> settings) initial,
    required TResult Function(Fresh<GlobalSettings> settings) loadInProgress,
    required TResult Function(Fresh<GlobalSettings> settings) loadSuccess,
    required TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)
        loadFailure,
  }) {
    return loadSuccess(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<GlobalSettings> settings)? initial,
    TResult Function(Fresh<GlobalSettings> settings)? loadInProgress,
    TResult Function(Fresh<GlobalSettings> settings)? loadSuccess,
    TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(settings);
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

abstract class _LoadSuccess extends GlobalSettingsState {
  const factory _LoadSuccess(Fresh<GlobalSettings> settings) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<GlobalSettings> get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res>
    implements $GlobalSettingsStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<GlobalSettings> settings, GlobalSettingsFailure failure});

  @override
  $FreshCopyWith<GlobalSettings, $Res> get settings;
  $GlobalSettingsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$GlobalSettingsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? settings = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Fresh<GlobalSettings>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GlobalSettingsFailure,
    ));
  }

  @override
  $GlobalSettingsFailureCopyWith<$Res> get failure {
    return $GlobalSettingsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.settings, this.failure) : super._();

  @override
  final Fresh<GlobalSettings> settings;
  @override
  final GlobalSettingsFailure failure;

  @override
  String toString() {
    return 'GlobalSettingsState.loadFailure(settings: $settings, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<GlobalSettings> settings) initial,
    required TResult Function(Fresh<GlobalSettings> settings) loadInProgress,
    required TResult Function(Fresh<GlobalSettings> settings) loadSuccess,
    required TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)
        loadFailure,
  }) {
    return loadFailure(settings, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<GlobalSettings> settings)? initial,
    TResult Function(Fresh<GlobalSettings> settings)? loadInProgress,
    TResult Function(Fresh<GlobalSettings> settings)? loadSuccess,
    TResult Function(
            Fresh<GlobalSettings> settings, GlobalSettingsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(settings, failure);
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

abstract class _LoadFailure extends GlobalSettingsState {
  const factory _LoadFailure(
          Fresh<GlobalSettings> settings, GlobalSettingsFailure failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<GlobalSettings> get settings => throw _privateConstructorUsedError;
  GlobalSettingsFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
