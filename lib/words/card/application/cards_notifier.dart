import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/words/card/infrastructure/cards_repository.dart';
import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/domain/word_failure.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

part 'cards_notifier.freezed.dart';

@freezed
class CardsState with _$CardsState {
  const CardsState._();
  const factory CardsState.initial(
    Fresh<List<Word>> cards,
  ) = _Initial;
  const factory CardsState.loadInProgress(
    Fresh<List<Word>> cards,
  ) = _LoadInProgress;
  const factory CardsState.loadSuccess(
    Fresh<List<Word>> cards, {
    required bool isNexPageAvailable,
  }) = _LoadSuccess;
  const factory CardsState.loadFailure(
      Fresh<List<Word>> cards, WordFailure failure) = _LoadFailure;
}

class CardsNotifier extends StateNotifier<CardsState> {
  final CardsRepository _repository;

  CardsNotifier(this._repository) : super(CardsState.initial(Fresh.yes([])));

  int _page = 1;

  Future<void> getNextCardsPage(String language) async {
    state = CardsState.loadInProgress(state.cards);
    final failureOrCards = await _repository.getWords(language, _page);
    state = failureOrCards.fold(
      (l) => CardsState.loadFailure(state.cards, l),
      (r) {
        // _page++;
        return CardsState.loadSuccess(
          r.copyWith(entity: r.entity),
          isNexPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }

  Future<void> flipWord(int word) async {
    state.maybeMap(
      orElse: () {},
      loadSuccess: (successState) async {
        final failureOrSuccess = await _repository.markFlipped(word);

        failureOrSuccess.fold(
          (l) => state,
          (r) => state,
        );
      },
    );
  }

  Future<void> markKnown(Word word) async {
    state.maybeMap(
      orElse: () {},
      loadSuccess: (successState) async {
        final stateCopy = successState.copyWith();
        final words = successState.cards.entity;

        words.removeWhere((Word current) => current.id == word.id);
        // state = state.copyWith(words: words, prev: null);

        final failureOrSuccess = await _repository.markKnown(word);

        failureOrSuccess.fold(
          (l) => state = stateCopy,
          (r) => r == null
              ? state = stateCopy
              : state = state.copyWith(
                  cards: Fresh(
                      entity: words,
                      isNextPageAvailable: state.cards.isNextPageAvailable,
                      isFresh: state.cards.isFresh)),
        );
      },
    );
  }

  Future<WordDTO> shareWord(int word, int user) async {
    var result = await _repository.shareWord(word, user);
    if (result == null) {
      throw RestApiException(500);
    }
    return result;
  }

  Future<void> deleteWord(int word) async {
    await _repository.deleteWord(word);
  }

  Future<void> starWord(Word word) async {
    state.maybeMap(
      orElse: () {},
      loadSuccess: (successState) async {
        final failureOrSuccess = await _repository.starWord(word);

        failureOrSuccess.fold(
          (l) => state,
          (r) => state,
        );
      },
    );
  }

  void increasePage() {
    _page++;
  }

  void dropPage() {
    _page = 1;
  }
}
