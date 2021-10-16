import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

extension DTOListToDomainList on List<WordDTO> {
  List<Word> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
