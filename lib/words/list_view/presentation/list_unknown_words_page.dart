import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/words/core/shared/providers.dart';
import 'package:words_native/words/list_view/presentation/paginated_words_list_view.dart';

class ListUnknownWordsPage extends StatefulWidget {
  const ListUnknownWordsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ListUnknownWordsPageState();
  }
}

class ListUnknownWordsPageState extends State<ListUnknownWordsPage> {
  @override
  void initState() {
    super.initState();
    // ref.read(starredReposNotifierProvider.notifier).getNextStarredReposPage();
    Future.microtask(
      () => context
          .read(listUnknownWordsNotifierProvider.notifier)
          .getNextWordsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        header: S.of(context).list_unknown_words,
        showBackButton: true,
      ),
      drawer: const DrawerWidget(),
      body: PaginatedWordsListView(
        paginatedWordsNotifierProvider: listUnknownWordsNotifierProvider,
        getNextPage: (/*ref*/ context) {
          // ref
          //     .read(starredReposNotifierProvider.notifier)
          //     .getNextStarredReposPage();
          context
              .read(listUnknownWordsNotifierProvider.notifier)
              .getNextWordsPage();
        },
        noResultsMessage: S.of(context).no_results_message,
      ),
    );
  }
}
