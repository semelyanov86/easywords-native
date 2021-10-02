import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_user.freezed.dart';

@freezed
class ShortUser with _$ShortUser {
  const ShortUser._();
  const factory ShortUser({
    required int id,
    required String name,
  }) = _ShortUser;
}
