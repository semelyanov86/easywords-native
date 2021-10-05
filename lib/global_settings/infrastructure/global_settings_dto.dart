import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:words_native/global_settings/domain/global_settings.dart';

part 'global_settings_dto.freezed.dart';
part 'global_settings_dto.g.dart';

@freezed
class GlobalSettingsDTO with _$GlobalSettingsDTO {
  const GlobalSettingsDTO._();
  const factory GlobalSettingsDTO({
    @Default(20) int paginate,
    @Default('DE') String default_language,
    @Default(false) bool starred_enabled,
    @Default(false) bool known_enabled,
    @Default(true) bool fresh_first,
    @Default(false) bool show_shared,
    @Default(true) bool show_imported,
    @Default('RU') String main_language,
    @Default(['DE', 'EN']) List<String> languages_list,
  }) = _GlobalSettingsDTO;

  factory GlobalSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$GlobalSettingsDTOFromJson(json);

  factory GlobalSettingsDTO.fromDomain(GlobalSettings _) {
    return GlobalSettingsDTO(
      paginate: _.paginate,
      default_language: _.default_language,
      starred_enabled: _.starred_enabled,
      known_enabled: _.known_enabled,
      fresh_first: _.fresh_first,
      show_shared: _.show_shared,
      show_imported: _.show_imported,
      main_language: _.main_language,
      languages_list: _.languages_list,
    );
  }

  GlobalSettings toDomain() {
    return GlobalSettings(
      paginate: paginate,
      default_language: default_language,
      starred_enabled: starred_enabled,
      known_enabled: known_enabled,
      fresh_first: fresh_first,
      show_shared: show_shared,
      show_imported: show_imported,
      main_language: main_language,
      languages_list: languages_list,
    );
  }
}
