import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/global_settings/domain/global_settings_failure.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_repository.dart';

import 'global_settings.dart';

part 'global_settings_notifier.freezed.dart';

@freezed
class GlobalSettingsState with _$GlobalSettingsState {
  const GlobalSettingsState._();
  const factory GlobalSettingsState.initial(Fresh<GlobalSettings> settings) =
      _Initial;
  const factory GlobalSettingsState.loadInProgress(
      Fresh<GlobalSettings> settings) = _LoadInProgress;
  const factory GlobalSettingsState.loadSuccess(
      Fresh<GlobalSettings> settings) = _LoadSuccess;
  const factory GlobalSettingsState.loadFailure(
          Fresh<GlobalSettings> settings, GlobalSettingsFailure failure) =
      _LoadFailure;
}

class GlobalSettingsNotifier extends StateNotifier<GlobalSettingsState> {
  final GlobalSettingsRepository _repository;

  GlobalSettingsNotifier(this._repository)
      : super(GlobalSettingsState.initial(Fresh.yes(const GlobalSettings())));

  List<String> getLanguages() {
    return state.settings.entity.languages_list;
  }

  String getSelectedLanguage() {
    return state.settings.entity.default_language;
  }

  final int _page = 1;

  Future<void> getSettings() async {
    state = GlobalSettingsState.loadInProgress(state.settings);
    final failureOrSettings = await _repository.getSettings(_page);
    state = failureOrSettings.fold(
      (l) => GlobalSettingsState.loadFailure(state.settings, l),
      (r) {
        return GlobalSettingsState.loadSuccess(Fresh.yes(r.entity));
      },
    );
  }

  int getPaginationValue() {
    return state.settings.entity.paginate;
  }

  bool getStarredValue() {
    return state.settings.entity.starred_enabled;
  }

  bool getLearnedValue() {
    return state.settings.entity.known_enabled;
  }

  bool getFreshFirstValue() {
    return state.settings.entity.fresh_first;
  }

  bool getShowImportedValue() {
    return state.settings.entity.show_imported;
  }

  bool getShowSharedValue() {
    return state.settings.entity.show_shared;
  }

  bool getLatestFirstValue() {
    return state.settings.entity.latest_first;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setPagination(
      int value) async {
    var result = _repository.setSettings('paginate', value);
    getSettings();

    return result;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setStarred(
      bool value) async {
    var result = _repository.setSettings('starred_enabled', value);
    getSettings();

    return result;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setAsKnown(
      bool value) async {
    var result = _repository.setSettings('known_enabled', value);
    getSettings();

    return result;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setFreshFirst(
      bool value) async {
    var result = _repository.setSettings('fresh_first', value);
    getSettings();

    return result;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setShowImported(
      bool value) async {
    var result = _repository.setSettings('show_imported', value);
    getSettings();

    return result;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setShowShared(
      bool value) async {
    var result = _repository.setSettings('show_shared', value);
    getSettings();

    return result;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setLatestFirst(
      bool value) async {
    var result = _repository.setSettings('latest_first', value);
    getSettings();

    return result;
  }

  Future<Either<GlobalSettingsFailure, Fresh<bool>>> setDefaultLanguage(
      String value) async {
    var result = _repository.setSettings('default_language', value);
    getSettings();

    return result;
  }

  Future<void> importWords() async {
    state = GlobalSettingsState.loadInProgress(state.settings);
    final failureOrSettings =
        await _repository.importWords(getSelectedLanguage());
    state = failureOrSettings.fold(
      (l) => GlobalSettingsState.loadFailure(state.settings, l),
      (r) {
        return GlobalSettingsState.loadSuccess(
            Fresh.yes(state.settings.entity));
      },
    );
  }
}
