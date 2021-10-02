import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:words_native/core/infrastructure/timestamp_converter.dart';
import 'package:words_native/profile/domain/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    required int id,
    required String name,
    required String email,
    required String? profile_photo_path,
    @TimestampNullableConverter() required DateTime? created_at,
    @TimestampNullableConverter() required DateTime? updated_at,
    @TimestampNullableConverter() required DateTime? email_verified_at,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      name: _.name,
      email: _.email,
      profile_photo_path: _.profile_photo_path,
      created_at: _.created_at,
      updated_at: _.updated_at,
      email_verified_at: _.email_verified_at,
      id: _.id,
    );
  }

  User toDomain() {
    return User(
      name: name,
      email: email,
      profile_photo_path: profile_photo_path,
      created_at: created_at,
      updated_at: updated_at,
      email_verified_at: email_verified_at,
      id: id,
    );
  }
}
