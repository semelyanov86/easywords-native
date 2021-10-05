import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/global_settings/shared/providers.dart';
import 'package:words_native/language_selector/presentation/failure_language_tile.dart';
import 'package:words_native/language_selector/presentation/language_tile.dart';
import 'package:words_native/language_selector/presentation/loading_language_tile.dart';

class LanguagesListView extends StatelessWidget {
  const LanguagesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref(globalSettingsNotifierProvider);
      return ListView.builder(
        itemCount: state.map(
          initial: (_) => 0,
          loadInProgress: (_) => _.settings.entity.languageDirections.length,
          loadSuccess: (_) => _.settings.entity.languageDirections.length,
          loadFailure: (_) => _.settings.entity.languageDirections.length + 1,
        ),
        itemBuilder: (context, index) {
          return state.map(
            initial: (_) => LanguageTile(
              direction: _.settings.entity.languageDirections[index],
            ),
            loadInProgress: (_) {
              return const LoadingLanguageTile();
            },
            loadSuccess: (_) => LanguageTile(
              direction: _.settings.entity.languageDirections[index],
            ),
            loadFailure: (_) => FailureLanguageTile(
              failure: _.failure,
            ),
          );
        },
      );
    });
  }
}
