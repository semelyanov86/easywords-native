import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'local_settings_model.freezed.dart';
part 'local_settings_model.g.dart';

@freezed
class LocalSettingsModel with _$LocalSettingsModel {
  const LocalSettingsModel._();
  const factory LocalSettingsModel({
    @Default('https://easywordsapp.ru/api') String server,
  }) = _LocalSettingsModel;

  factory LocalSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$LocalSettingsModelFromJson(json);
}

class LocalSettingsNotifier extends StateNotifier<LocalSettingsModel> {
  LocalSettingsNotifier() : super(const LocalSettingsModel());

  void setServer(String server) {
    state = state.copyWith(server: server);
  }
}
