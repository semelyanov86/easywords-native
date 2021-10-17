// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordDTO _$_$_WordDTOFromJson(Map<String, dynamic> json) {
  return _$_WordDTO(
    id: json['id'] as int,
    original: json['original'] as String,
    translated: json['translated'] as String,
    done_at:
        const TimestampNullableConverter().fromJson(json['done_at'] as String?),
    starred: json['starred'] as bool? ?? false,
    user_id: json['user_id'] as int,
    language: json['language'] as String,
    views: json['views'] as int,
    from_sample: json['from_sample'] as bool? ?? false,
    shared_by: json['shared_by'] as int?,
    created_at: const TimestampNullableConverter()
        .fromJson(json['created_at'] as String?),
  );
}

Map<String, dynamic> _$_$_WordDTOToJson(_$_WordDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original': instance.original,
      'translated': instance.translated,
      'done_at': const TimestampNullableConverter().toJson(instance.done_at),
      'starred': instance.starred,
      'user_id': instance.user_id,
      'language': instance.language,
      'views': instance.views,
      'from_sample': instance.from_sample,
      'shared_by': instance.shared_by,
      'created_at':
          const TimestampNullableConverter().toJson(instance.created_at),
    };
