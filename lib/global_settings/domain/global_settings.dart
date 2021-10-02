import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_settings.freezed.dart';

@freezed
class GlobalSettings with _$GlobalSettings {
  const GlobalSettings._();
  const factory GlobalSettings({
    @Default(20) int paginate,
    @Default('DE') String default_language,
    @Default(false) bool starred_enabled,
    @Default(true) bool fresh_first,
    @Default(false) bool show_starred,
    @Default(true) bool show_imported,
    @Default('RU') String main_language,
    @Default(['DE', 'EN']) List<String> languages_list,
  }) = _GlobalSettings;
}
