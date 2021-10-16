import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/language_selector/presentation/no_results_display.dart';
import 'package:words_native/words/list_view/application/paginated_words_notifier.dart';
import 'package:words_native/words/list_view/presentation/failure_word_tile.dart';
import 'package:words_native/words/list_view/presentation/loading_word_tile.dart';
import 'package:words_native/words/list_view/presentation/word_tile.dart';

class PaginatedWordsListView extends StatefulWidget {
  final AutoDisposeStateNotifierProvider<PaginatedWordsNotifier,
      PaginatedWordsState> paginatedWordsNotifierProvider;
  final void Function(/*WidgetReference ref*/ BuildContext context) getNextPage;
  final String noResultsMessage;

  const PaginatedWordsListView({
    Key? key,
    required this.paginatedWordsNotifierProvider,
    required this.getNextPage,
    required this.noResultsMessage,
  }) : super(key: key);

  @override
  _PaginatedWordsListViewState createState() => _PaginatedWordsListViewState();
}

class _PaginatedWordsListViewState extends State<PaginatedWordsListView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // ref.listen<PaginatedReposState>(
        //   widget.paginatedReposNotifierProvider,
        //   (state) {},
        // );
        final state = ref(widget.paginatedWordsNotifierProvider);
        return ProviderListener<PaginatedWordsState>(
          provider: widget.paginatedWordsNotifierProvider,
          onChange: (context, state) {
            state.map(
              initial: (_) => canLoadNextPage = true,
              loadInProgress: (_) => canLoadNextPage = false,
              loadSuccess: (_) {
                if (!_.words.isFresh && !hasAlreadyShownNoConnectionToast) {
                  hasAlreadyShownNoConnectionToast = true;
                  showNoConnectionToast(
                    S.of(context).offline_info,
                    context,
                  );
                }
                canLoadNextPage = _.isNextPageAvailable;
              },
              loadFailure: (_) => canLoadNextPage = false,
            );
          },
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              final metrics = notification.metrics;
              final limit =
                  metrics.maxScrollExtent - metrics.viewportDimension / 3;

              if (canLoadNextPage && metrics.pixels >= limit) {
                canLoadNextPage = false;
                widget.getNextPage(/*ref*/ context);
              }
              return false;
            },
            child: state.maybeWhen(
              loadSuccess: (repos, _) => repos.entity.isEmpty,
              orElse: () => false,
            )
                ? NoResultsDisplay(
                    message: widget.noResultsMessage,
                    language: null,
                  )
                : _PaginatedListView(
                    state: state,
                  ),
          ),
        );
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PaginatedWordsState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (_) => _.words.entity.length + _.itemsPerPage,
        loadSuccess: (_) => _.words.entity.length,
        loadFailure: (_) => _.words.entity.length + 1,
      ),
      itemBuilder: (contex, index) {
        return state.map(
          initial: (_) => WordTile(
            word: _.words.entity[index],
          ),
          loadInProgress: (_) {
            if (index < _.words.entity.length) {
              return WordTile(word: _.words.entity[index]);
            } else {
              return const LoadingWordTile();
            }
          },
          loadSuccess: (_) => WordTile(
            word: _.words.entity[index],
          ),
          loadFailure: (_) {
            if (index < _.words.entity.length) {
              return WordTile(word: _.words.entity[index]);
            } else {
              return FailureWordTile(failure: _.failure);
            }
          },
        );
      },
    );
  }
}
