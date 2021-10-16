import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/primitives/languages_list_widget.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/global_settings/shared/providers.dart';
import 'package:words_native/words/core/shared/providers.dart';
import 'package:words_native/words/create_word/application/create_card_state_notifier.dart';

class CreateWordForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const CreateWordForm({
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

  @override
  void initState() {
    super.initState();
    // ref.read(starredReposNotifierProvider.notifier).getNextStarredReposPage();
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final stateData = ref(globalSettingsNotifierProvider);
      final stateProvider = ref(createWordsNotifierProvider);
      return ProviderListener<CreateCardState>(
        provider: createWordsNotifierProvider,
        onChange: (context, state) {
          state.map(
            loadInProgress: (_) {
              return showNotificationToast(S.of(context).sending_data, context);
            },
            loadSuccess: (_) => showSuccessToast(
                S.of(context).creation_message + _.word.entity.id.toString(),
                context),
            loadFailure: (_) => showNoConnectionToast(
                S.of(context).error_creating_word + _.failure.toString(),
                context),
            validationFailure: (_) => showNoConnectionToast(
                S.of(context).validation_error + _.failure.message, context),
          );
        },
        child: ProviderScope(
          child: Form(
            key: widget.formKey,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).short),
                  const SizedBox(height: 10),
                  TextFormField(
                    focusNode: _originalFocus,
                    autofocus: true,
                    onFieldSubmitted: (_) {
                      _fieldFocusChange(
                          context, _originalFocus, _translatedFocus);
                    },
                    controller: _originalController,
                    decoration: InputDecoration(
                      labelText: S.of(context).original,
                      hintText: S.of(context).original_helper,
                      prefixIcon: const Icon(MdiIcons.earth),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          context
                              .read(createWordProvider.notifier)
                              .setOriginal('');
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
                      labelText: S.of(context).translated,
                      hintText: S.of(context).translated_helper,
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
                  LanguagesListWidget(
                    languageValueSetter: (language) {
                      setState(() {
                        _selectedLanguage = language as String;
                        context
                            .read(createWordProvider.notifier)
                            .setLanguage(language as String);
                      });
                    },
                    languagesList: stateData.settings.entity.languages_list,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (widget.formKey.currentState!.validate()) {
                        widget.formKey.currentState!.save();
                        context
                            .read(createWordsNotifierProvider.notifier)
                            .create()
                            .then((value) {
                          context
                              .read(createWordProvider.notifier)
                              .setTranslated('');
                          context
                              .read(createWordProvider.notifier)
                              .setOriginal('');
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                    child: Text(S.of(context).save), //color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  String? _validateWord(String? value) {
    if (value == null || value.isEmpty) {
      return 'Current value is required.';
    } else {
      return null;
    }
  }
}
