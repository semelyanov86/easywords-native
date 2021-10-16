import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/words/core/domain/word_failure.dart';
import 'package:words_native/words/list_view/presentation/paginated_words_list_view.dart';

class FailureWordTile extends ConsumerWidget {
  final WordFailure failure;

  const FailureWordTile({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, _) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).errorColor,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text(S.of(context).unexpected_error),
          subtitle: Text(
            failure.map(
              api: (_) => 'API returned ${_.errorCode}',
              validation: (_) => '',
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
              context
                  .findAncestorWidgetOfExactType<PaginatedWordsListView>()
                  ?.getNextPage(/*ref*/ context);
            },
          ),
        ),
      ),
    );
  }
}
