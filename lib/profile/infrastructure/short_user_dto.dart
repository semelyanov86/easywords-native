import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:words_native/profile/domain/short_user.dart';

part 'short_user_dto.freezed.dart';
part 'short_user_dto.g.dart';

@freezed
class ShortUserDTO with _$ShortUserDTO {
  const ShortUserDTO._();
  const factory ShortUserDTO({
    required int id,
    required String name,
  }) = _ShortUserDTO;

  factory ShortUserDTO.fromJson(Map<String, dynamic> json) =>
      _$ShortUserDTOFromJson(json);

  factory ShortUserDTO.fromDomain(ShortUser _) {
    return ShortUserDTO(id: _.id, name: _.name);
  }

  ShortUser toDomain() {
    return ShortUser(id: id, name: name);
  }
}
