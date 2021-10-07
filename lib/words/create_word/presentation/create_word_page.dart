import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/words/create_word/presentation/create_word_form.dart';

class CreateWordPage extends HookWidget {
  const CreateWordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const AppBarWidget(
        header: 'Create new word',
        showBackButton: true,
      ),
      drawer: const DrawerWidget(),
      body: CreateWordForm(
        formKey: formKey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
