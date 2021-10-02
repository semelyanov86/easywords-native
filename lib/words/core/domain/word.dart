import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

@freezed
class Word with _$Word {
  const Word._();
  const factory Word({
    required int id,
    required String original,
    required String translated,
    @Default(null) String? done_at,
    @Default(false) bool starred,
    required int user_id,
    required String language,
    required int views,
    required DateTime? created_at,
  }) = _Word;

  String get displayName => '$original - $translated';
  int get originalLength => original.length;
  int get translatedLength => translated.length;
}
