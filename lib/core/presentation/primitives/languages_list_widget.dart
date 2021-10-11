import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/global_settings/shared/providers.dart';

typedef LanguageValueSetter = void Function(String value);

class LanguagesListWidget extends StatefulWidget {
  const LanguagesListWidget({
    Key? key,
    required this.languageValueSetter,
    required this.languagesList,
  }) : super(key: key);

  final LanguageValueSetter languageValueSetter;
  final List<String> languagesList;

  @override
  _LanguagesListWidgetState createState() {
    return _LanguagesListWidgetState();
  }
}

class _LanguagesListWidgetState extends State<LanguagesListWidget> {
  String _selectedLanguage = '';

  List<String> _languages = [];

  @override
  void initState() {
    super.initState();
    _languages =
        context.read(globalSettingsNotifierProvider.notifier).getLanguages();
    _selectedLanguage = context
        .read(globalSettingsNotifierProvider.notifier)
        .getSelectedLanguage();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.map),
          labelText: 'Select language',
        ),
        items: widget.languagesList.map((language) {
          return DropdownMenuItem(
            child: Text(language),
            value: language,
          );
        }).toList(),
        onChanged: (language) {
          setState(() {
            _selectedLanguage = language as String;
          });
          widget.languageValueSetter(language as String);
        },
        value: _selectedLanguage,
        validator: (val) {
          return val == null ? 'Please select a language' : null;
        },
      ),
    );
  }
}
