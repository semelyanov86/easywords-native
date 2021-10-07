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
}
