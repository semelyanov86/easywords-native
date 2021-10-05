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
    String? description,
  }) = _TranslationDirections;
}
