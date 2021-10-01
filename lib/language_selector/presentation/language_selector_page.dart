import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/auth/shared/providers.dart';

class LanguageSelectorPage extends ConsumerWidget {
  const LanguageSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read(authNotifierProvider.notifier).signOut();
          },
          child: Text('Sign Out'),
        ),
      ),
    );
  }
}
