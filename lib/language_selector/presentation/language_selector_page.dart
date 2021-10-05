import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/auth/shared/providers.dart';
import 'package:words_native/global_settings/shared/providers.dart';
import 'package:words_native/language_selector/presentation/languages_list_view.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EasyWordsApp'),
        actions: [
          IconButton(
              onPressed: () {
                context.read(authNotifierProvider.notifier).signOut();
              },
              icon: const Icon(MdiIcons.logoutVariant))
        ],
      ),
      body: const LanguagesListView(),
    );
  }
}
