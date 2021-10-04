import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:words_native/core/infrastructure/timestamp_converter.dart';
import 'package:words_native/words/core/domain/word.dart';

part 'word_dto.freezed.dart';
part 'word_dto.g.dart';

@freezed
class WordDTO with _$WordDTO {
  const WordDTO._();
  const factory WordDTO({
    required int id,
    required String original,
    required String translated,
    @TimestampNullableConverter() @Default(null) DateTime? done_at,
    @Default(false) bool starred,
    required int user_id,
    required String language,
    required int views,
    @TimestampNullableConverter() @Default(null) DateTime? created_at,
  }) = _WordDTO;

  factory WordDTO.fromJson(Map<String, dynamic> json) =>
      _$WordDTOFromJson(json);

  factory WordDTO.fromDomain(Word _) {
    return WordDTO(
      id: _.id,
      original: _.original,
      translated: _.translated,
      user_id: _.user_id,
      language: _.language,
      views: _.views,
    );
  }

  Word toDomain() {
    return Word(
      id: id,
      original: original,
      translated: translated,
      user_id: user_id,
      language: language,
      views: views,
      created_at: created_at,
    );
  }
}