// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsDTO _$_$_StatisticsDTOFromJson(Map<String, dynamic> json) {
  return _$_StatisticsDTO(
    all: json['all'] as int,
    starred: json['starred'] as int,
    not_dones: json['not_dones'] as int,
    dones: json['dones'] as int,
    total_views: json['total_views'] as int,
    users_count: json['users_count'] as int,
    most_viewed: (json['most_viewed'] as List<dynamic>)
        .map((e) => WordDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    added_today: (json['added_today'] as List<dynamic>)
        .map((e) => WordDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    updated_this_month: json['updated_this_month'] as int,
    updated_today: json['updated_today'] as int,
  );
}

Map<String, dynamic> _$_$_StatisticsDTOToJson(_$_StatisticsDTO instance) =>
    <String, dynamic>{
      'all': instance.all,
      'starred': instance.starred,
      'not_dones': instance.not_dones,
      'dones': instance.dones,
      'total_views': instance.total_views,
      'users_count': instance.users_count,
      'most_viewed': instance.most_viewed.map((e) => e.toJson()).toList(),
      'added_today': instance.added_today.map((e) => e.toJson()).toList(),
      'updated_this_month': instance.updated_this_month,
      'updated_today': instance.updated_today,
    };
