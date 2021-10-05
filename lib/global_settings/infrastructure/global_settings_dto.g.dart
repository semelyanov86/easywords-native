// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GlobalSettingsDTO _$_$_GlobalSettingsDTOFromJson(Map<String, dynamic> json) {
  return _$_GlobalSettingsDTO(
    paginate: json['paginate'] as int? ?? 20,
    default_language: json['default_language'] as String? ?? 'DE',
    starred_enabled: json['starred_enabled'] as bool? ?? false,
    known_enabled: json['known_enabled'] as bool? ?? false,
    fresh_first: json['fresh_first'] as bool? ?? true,
    show_shared: json['show_shared'] as bool? ?? false,
    show_imported: json['show_imported'] as bool? ?? true,
    main_language: json['main_language'] as String? ?? 'RU',
    languages_list: (json['languages_list'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        ['DE', 'EN'],
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
    };
