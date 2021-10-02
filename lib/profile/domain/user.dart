import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required int id,
    required String name,
    required String email,
    required String? profile_photo_path,
    required DateTime? created_at,
    required DateTime? updated_at,
    required DateTime? email_verified_at,
  }) = _User;
}
