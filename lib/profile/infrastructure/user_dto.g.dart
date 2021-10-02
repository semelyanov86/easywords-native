// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    name: json['name'] as String,
    email: json['email'] as String,
    profile_photo_path: json['profile_photo_path'] as String?,
    created_at: const TimestampNullableConverter()
        .fromJson(json['created_at'] as String?),
    updated_at: const TimestampNullableConverter()
        .fromJson(json['updated_at'] as String?),
    email_verified_at: const TimestampNullableConverter()
        .fromJson(json['email_verified_at'] as String?),
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'profile_photo_path': instance.profile_photo_path,
      'created_at':
          const TimestampNullableConverter().toJson(instance.created_at),
      'updated_at':
          const TimestampNullableConverter().toJson(instance.updated_at),
      'email_verified_at':
          const TimestampNullableConverter().toJson(instance.email_verified_at),
    };
