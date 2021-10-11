// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GlobalSettingsDTO _$_$_GlobalSettingsDTOFromJson(Map<String, dynamic> json) {
  return _$_GlobalSettingsDTO(
    paginate: _parseInt(json['paginate']),
    default_language: json['default_language'] as String? ?? 'DE',
    starred_enabled: _parseBool(json['starred_enabled']),
    known_enabled: _parseBool(json['known_enabled']),
    fresh_first: _parseBool(json['fresh_first']),
    show_shared: _parseBool(json['show_shared']),
    show_imported: _parseBool(json['show_imported']),
    main_language: json['main_language'] as String? ?? 'RU',
    languages_list: (json['languages_list'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    latest_first: _parseBool(json['latest_first']),
  );
}

Map<String, dynamic> _$_$_GlobalSettingsDTOToJson(
        _$_GlobalSettingsDTO instance) =>
    <String, dynamic>{
      'paginate': instance.paginate,
      'default_language': instance.default_language,
      'starred_enabled': instance.starred_enabled,
      'known_enabled': instance.known_enabled,
      'fresh_first': instance.fresh_first,
      'show_shared': instance.show_shared,
      'show_imported': instance.show_imported,
      'main_language': instance.main_language,
      'languages_list': instance.languages_list,
      'latest_first': instance.latest_first,
    };
