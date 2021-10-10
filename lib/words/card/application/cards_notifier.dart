import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
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
    await _repository.markFlipped(word);
  }

  Future<void> markKnown(Word word) async {
    await _repository.markKnown(word);
  }

  Future<WordDTO> shareWord(int word, int user) async {
    var result = await _repository.shareWord(word, user);
    return result;
  }

  Future<void> deleteWord(int word) async {
    await _repository.deleteWord(word);
  }

  Future<void> starWord(Word word) async {
    await _repository.starWord(word);
  }

  void increasePage() {
    _page++;
  }
}
