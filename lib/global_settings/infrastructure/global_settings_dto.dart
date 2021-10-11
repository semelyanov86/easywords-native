import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:words_native/global_settings/domain/global_settings.dart';

part 'global_settings_dto.freezed.dart';
part 'global_settings_dto.g.dart';

int _parseInt(dynamic json) {
  if (json is int) {
    return json;
  }
  return json is String ? int.parse(json) : 20;
}

bool _parseBool(dynamic json) {
  if (json is bool) {
    return json;
  }
  if (json == '1' || json == 1) {
    return true;
  }
  return json != '0' && json != 'false' && json != '';
}

@freezed
class GlobalSettingsDTO with _$GlobalSettingsDTO {
  const GlobalSettingsDTO._();
  const factory GlobalSettingsDTO({
    @JsonKey(fromJson: _parseInt) @Default(21) int paginate,
    @Default('DE') String default_language,
    @JsonKey(fromJson: _parseBool) @Default(false) bool starred_enabled,
    @JsonKey(fromJson: _parseBool) @Default(false) bool known_enabled,
    @JsonKey(fromJson: _parseBool) @Default(true) bool fresh_first,
    @JsonKey(fromJson: _parseBool) @Default(false) bool show_shared,
    @JsonKey(fromJson: _parseBool) @Default(true) bool show_imported,
    @Default('RU') String main_language,
    @Default([]) List<String> languages_list,
    @JsonKey(fromJson: _parseBool) @Default(false) bool latest_first,
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
      latest_first: _.latest_first,
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
      latest_first: latest_first,
    );
  }
}
