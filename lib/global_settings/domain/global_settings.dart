import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/global_settings/domain/translation_directions.dart';

part 'global_settings.freezed.dart';

@freezed
class GlobalSettings with _$GlobalSettings {
  const GlobalSettings._();
  const factory GlobalSettings({
    @Default(20) int paginate,
    @Default('DE') String default_language,
    @Default(false) bool starred_enabled,
    @Default(false) bool known_enabled,
    @Default(true) bool fresh_first,
    @Default(false) bool show_shared,
    @Default(true) bool show_imported,
    @Default('RU') String main_language,
    @Default(['DE', 'EN']) List<String> languages_list,
    @Default(false) bool latest_first,
  }) = _GlobalSettings;

  List<TranslationDirections> get languageDirections {
    List<TranslationDirections> result = [];
    languages_list.forEach((key) {
      result.add(TranslationDirections(
        original: main_language,
        main: key,
        icon: MdiIcons.arrowRightCircle,
        description: 'First we will show ${main_language} and only then ${key}',
        reversed: false,
      ));
      result.add(TranslationDirections(
        original: key,
        main: main_language,
        icon: MdiIcons.arrowLeftCircle,
        description: 'First we will show ${key} and only then ${main_language}',
        reversed: true,
      ));
    });
    return result;
  }
}
