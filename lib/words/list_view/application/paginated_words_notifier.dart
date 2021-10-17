import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/global_settings/domain/global_settings_notifier.dart';
import 'package:words_native/words/card/infrastructure/cards_repository.dart';
import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/domain/word_failure.dart';

part 'paginated_words_notifier.freezed.dart';

typedef WordGetter = Future<Either<WordFailure, Fresh<List<Word>>>> Function(
    int page);

@freezed
class PaginatedWordsState with _$PaginatedWordsState {
  const PaginatedWordsState._();
  const factory PaginatedWordsState.initial(Fresh<List<Word>> words) = _Initial;
  const factory PaginatedWordsState.loadInProgress(
    Fresh<List<Word>> words,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory PaginatedWordsState.loadSuccess(
    Fresh<List<Word>> words, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory PaginatedWordsState.loadFailure(
    Fresh<List<Word>> words,
    WordFailure failure,
  ) = _LoadFailure;
}

class PaginatedWordsNotifier extends StateNotifier<PaginatedWordsState> {
  final GlobalSettingsNotifier _settingsNotifier;
  final CardsRepository _cardsRepository;

  PaginatedWordsNotifier(this._settingsNotifier, this._cardsRepository)
      : super(PaginatedWordsState.initial(Fresh.yes([])));

  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    state = PaginatedWordsState.initial(Fresh.yes([]));
  }

  @protected
  Future<void> getNextPage(WordGetter getter) async {
    final int pagination = _settingsNotifier.state.settings.entity.paginate;
    state = PaginatedWordsState.loadInProgress(
      state.words,
      pagination,
    );
    final failureOrRepos = await getter(_page);
    state = failureOrRepos.fold(
      (l) => PaginatedWordsState.loadFailure(state.words, l),
      (r) {
        _page++;
        return PaginatedWordsState.loadSuccess(
          r.copyWith(
            entity: [
              ...state.words.entity,
              ...r.entity,
            ],
          ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }

  Future<void> onClickLearn(Word word) async {
    final failureOrSuccess = _cardsRepository.markKnown(word);
  }
}
