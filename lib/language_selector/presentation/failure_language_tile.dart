import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/global_settings/domain/global_settings_failure.dart';
import 'package:words_native/global_settings/shared/providers.dart';

class FailureLanguageTile extends ConsumerWidget {
  final GlobalSettingsFailure failure;

  const FailureLanguageTile({Key? key, required this.failure})
      : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).errorColor,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text('An error occured, please, retry'),
          subtitle: Text(
            failure.map(
              api: (_) => 'Api returned ${_.errorCode}',
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          trailing: IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              ref(globalSettingsNotifierProvider.notifier).getSettings();
            },
          ),
        ),
      ),
    );
  }
}
