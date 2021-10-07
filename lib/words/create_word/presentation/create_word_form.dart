import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/global_settings/shared/providers.dart';
import 'package:words_native/words/core/shared/providers.dart';

class CreateWordForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  CreateWordForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  _CreateWordForm createState() => _CreateWordForm();
}

class _CreateWordForm extends State<CreateWordForm> {
  final _originalFocus = FocusNode();
  final _translatedFocus = FocusNode();
  final _originalController = TextEditingController();
  final _translatedController = TextEditingController();
  String _selectedLanguage = '';

  List<String> _languages = [];

  @override
  void initState() {
    super.initState();
    // ref.read(starredReposNotifierProvider.notifier).getNextStarredReposPage();
    /*_languages = context
        .read(globalSettingsNotifierProvider.notifier)
        .state
        .settings
        .entity
        .languages_list;*/
    _languages =
        context.read(globalSettingsNotifierProvider.notifier).getLanguages();
    _selectedLanguage = context
        .read(globalSettingsNotifierProvider.notifier)
        .getSelectedLanguage();
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Form(
        key: widget.formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Create new word then press save. Later you can learn it.'),
              const SizedBox(height: 10),
              TextFormField(
                focusNode: _originalFocus,
                autofocus: true,
                onFieldSubmitted: (_) {
                  _fieldFocusChange(context, _originalFocus, _translatedFocus);
                },
                controller: _originalController,
                decoration: InputDecoration(
                  labelText: 'Original word value *',
                  hintText: 'What is original value of word?',
                  prefixIcon: const Icon(MdiIcons.earth),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      context.read(createWordProvider.notifier).setOriginal('');
                      _originalController.clear();
                    },
                    child: const Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                  ),
                ),
                validator: _validateWord,
                onSaved: (value) => context
                    .read(createWordProvider.notifier)
                    .setOriginal(value ?? ''),
              ),
              const SizedBox(height: 10),
              TextFormField(
                focusNode: _translatedFocus,
                controller: _translatedController,
                decoration: InputDecoration(
                  labelText: 'Translated word value *',
                  hintText: 'What is translated value of word?',
                  prefixIcon: const Icon(MdiIcons.flag),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      context
                          .read(createWordProvider.notifier)
                          .setTranslated('');
                      _translatedController.clear();
                    },
                    child: const Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                  ),
                ),
                validator: _validateWord,
                onSaved: (value) => context
                    .read(createWordProvider.notifier)
                    .setTranslated(value ?? ''),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.map),
                    labelText: 'Select language'),
                items: _languages.map((language) {
                  return DropdownMenuItem(
                    child: Text(language),
                    value: language,
                  );
                }).toList(),
                onChanged: (language) {
                  setState(() {
                    _selectedLanguage = language as String;
                    context
                        .read(createWordProvider.notifier)
                        .setLanguage(language as String);
                  });
                },
                value: _selectedLanguage,
                validator: (val) {
                  return val == null ? 'Please select a language' : null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: const Text('Create Word'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  textStyle: const TextStyle(color: Colors.white),
                ), //color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _validateWord(String? value) {
    if (value == null || value.isEmpty) {
      return 'Current value is required.';
    } else {
      return null;
    }
  }
}
