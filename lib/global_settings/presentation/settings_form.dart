import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/primitives/languages_list_widget.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/global_settings/domain/global_settings_notifier.dart';
import 'package:words_native/global_settings/shared/providers.dart';

typedef IntValueSetter = void Function(int value);

typedef BoolValueSetter = void Function(bool value);

class SettingsForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const SettingsForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  _SettingsFormState createState() {
    return _SettingsFormState();
  }
}

class _SettingsFormState extends State<SettingsForm> {
  bool isImportPressed = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final stateData = ref(globalSettingsNotifierProvider);
      return ProviderListener<GlobalSettingsState>(
        onChange: (context, state) {
          state.map(
            initial: (_) {},
            loadInProgress: (_) {
              if (isImportPressed) {
                return showNoConnectionToast(
                    S.of(context).import_started, context);
              }
              return const CircularProgressIndicator();
            },
            loadSuccess: (_) {
              // showNoConnectionToast('Settings successfully updated!', context);
            },
            loadFailure: (_) {
              showNoConnectionToast(_.failure.toString(), context);
            },
          );
        },
        provider: globalSettingsNotifierProvider,
        child: ProviderScope(
          child: Form(
            key: widget.formKey,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                RangeTextFormField(
                  labelText: S.of(context).paginate,
                  intValueSetter: (value) => context
                      .read(globalSettingsNotifierProvider.notifier)
                      .setPagination(value),
                  initialValue: stateData.settings.entity.paginate,
                ),
                const SizedBox(height: 12),
                LanguagesListWidget(
                  languageValueSetter: (language) => context
                      .read(globalSettingsNotifierProvider.notifier)
                      .setDefaultLanguage(language),
                  languagesList: stateData.settings.entity.languages_list,
                ),
                const SizedBox(height: 12),
                CheckboxSettingFormField(
                  labelText: S.of(context).starred_enabled,
                  boolValueSetter: (value) => {
                    context
                        .read(globalSettingsNotifierProvider.notifier)
                        .setStarred(value),
                  },
                  initialValue: context
                      .read(globalSettingsNotifierProvider.notifier)
                      .getStarredValue(),
                ),
                CheckboxSettingFormField(
                  labelText: S.of(context).known_enabled,
                  boolValueSetter: (value) => {
                    context
                        .read(globalSettingsNotifierProvider.notifier)
                        .setAsKnown(value),
                  },
                  initialValue: context
                      .read(globalSettingsNotifierProvider.notifier)
                      .getLearnedValue(),
                ),
                CheckboxSettingFormField(
                  labelText: S.of(context).fresh_first,
                  boolValueSetter: (value) => {
                    context
                        .read(globalSettingsNotifierProvider.notifier)
                        .setFreshFirst(value),
                  },
                  initialValue: context
                      .read(globalSettingsNotifierProvider.notifier)
                      .getFreshFirstValue(),
                ),
                CheckboxSettingFormField(
                  labelText: S.of(context).show_imported,
                  boolValueSetter: (value) => {
                    context
                        .read(globalSettingsNotifierProvider.notifier)
                        .setShowImported(value),
                  },
                  initialValue: context
                      .read(globalSettingsNotifierProvider.notifier)
                      .getShowImportedValue(),
                ),
                CheckboxSettingFormField(
                  labelText: S.of(context).show_shared,
                  boolValueSetter: (value) => {
                    context
                        .read(globalSettingsNotifierProvider.notifier)
                        .setShowShared(value),
                  },
                  initialValue: context
                      .read(globalSettingsNotifierProvider.notifier)
                      .getShowSharedValue(),
                ),
                CheckboxSettingFormField(
                  labelText: S.of(context).latest_first,
                  boolValueSetter: (value) => {
                    context
                        .read(globalSettingsNotifierProvider.notifier)
                        .setLatestFirst(value),
                  },
                  initialValue: context
                      .read(globalSettingsNotifierProvider.notifier)
                      .getLatestFirstValue(),
                ),
                const SizedBox(height: 12),
                Text(
                  S.of(context).import_header,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isImportPressed = true;
                      });
                      context
                          .read(globalSettingsNotifierProvider.notifier)
                          .importWords();
                    },
                    child: Text(S.of(context).import_button))
              ],
            ),
          ),
        ),
      );
    });
  }
}

class RangeTextFormField extends StatelessWidget {
  const RangeTextFormField(
      {Key? key,
      required this.labelText,
      required this.intValueSetter,
      required this.initialValue})
      : super(key: key);

  final String labelText;

  final int initialValue;

  final IntValueSetter intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        prefixIcon: const Icon(MdiIcons.cards),
      ),
      initialValue: initialValue.toString(),
      keyboardType:
          const TextInputType.numberWithOptions(decimal: false, signed: true),
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '20')),
      onChanged: (newValue) => intValueSetter(int.parse(newValue)),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'Here must be a valid number';
        }
        if (int.parse(value) < 2) {
          return 'Word length should be more then 2';
        }
        return null;
      },
    );
  }
}

class CheckboxSettingFormField extends StatefulWidget {
  const CheckboxSettingFormField(
      {Key? key,
      required this.labelText,
      required this.boolValueSetter,
      required this.initialValue})
      : super(key: key);

  final String labelText;

  final bool initialValue;

  final BoolValueSetter boolValueSetter;

  @override
  State<StatefulWidget> createState() => _CheckboxSettingFormField();
}

class _CheckboxSettingFormField extends State<CheckboxSettingFormField> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: _isChecked,
      onChanged: (bool? value) {
        widget.boolValueSetter(value ?? false);
        setState(() {
          _isChecked = value!;
        });
        // context.refresh(randomizerProvider);
      },
      title: Text(widget.labelText),
    );
    /*return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            widget.boolValueSetter(value ?? false);
            setState(() {
              _isChecked = value!;
            });
            // context.refresh(randomizerProvider);
          },
        ),
        Text(widget.labelText, style: Theme.of(context).textTheme.subtitle1),
      ],
    );*/
  }
}
