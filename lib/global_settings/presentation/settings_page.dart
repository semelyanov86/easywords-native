import 'package:flutter/material.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/global_settings/presentation/settings_form.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBarWidget(
        header: S.of(context).Settings,
        showBackButton: true,
      ),
      drawer: const DrawerWidget(),
      body: SettingsForm(
        formKey: formKey,
      ),
    );
  }
}
