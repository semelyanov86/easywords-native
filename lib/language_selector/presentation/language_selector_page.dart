import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/global_settings/shared/providers.dart';
import 'package:words_native/language_selector/presentation/languages_list_view.dart';
import 'package:words_native/profile/shared/providers.dart';

class LanguageSelectorPage extends StatefulWidget {
  const LanguageSelectorPage({Key? key}) : super(key: key);

  @override
  _LanguageSelectorPageState createState() => _LanguageSelectorPageState();
}

class _LanguageSelectorPageState extends State<LanguageSelectorPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read(globalSettingsNotifierProvider.notifier).getSettings(),
    );
    Future.microtask(
      () => context.read(profileNotifierProvider.notifier).getProfile(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(header: S.of(context).title),
      drawer: const DrawerWidget(),
      body: const LanguagesListView(),
    );
  }
}
