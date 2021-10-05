import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation_directions.freezed.dart';

@freezed
class TranslationDirections with _$TranslationDirections {
  const TranslationDirections._();
  const factory TranslationDirections({
    required String original,
    required String main,
    required IconData icon,
    required bool reversed,
    String? description,
  }) = _TranslationDirections;
  String get mainLanguage => reversed ? main : original;
  String get originalLanguage => reversed ? original : main;
}
