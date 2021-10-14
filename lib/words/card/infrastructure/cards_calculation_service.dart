import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/words/core/domain/word.dart';

part 'cards_calculation_service.freezed.dart';

@freezed
class CardsCalculationService with _$CardsCalculationService {
  const CardsCalculationService._();
  const factory CardsCalculationService({
    @Default(0) int index,
    @Default(0) int current,
    @Default(null) int? prev,
    @Default([]) List<Word> words,
  }) = _CardsCalculationService;

  Word getCurrentWord() {
    return words[current];
  }

  bool isEmpty() {
    return words.isEmpty;
  }

  String getDisplayCurrent() {
    final currentDisplay = current + 1;
    return currentDisplay.toString();
  }
}

class CardsCalculationServiceNotifier
    extends StateNotifier<CardsCalculationService> {
  CardsCalculationServiceNotifier() : super(const CardsCalculationService());

  void setNextWord() {
    state = state.copyWith(index: state.index + 1);
    int nextValue = state.current + 1;
    if (state.index > state.words.length - 1) {
      final Random random = Random();
      nextValue = random.nextInt(state.words.length);
      if (state.words.length > 3) {
        while (nextValue == state.current || nextValue == state.prev) {
          nextValue = random.nextInt(state.words.length);
        }
      }
    }
    state = state.copyWith(current: nextValue, prev: state.current);
  }

  void setPrevWord() {
    if (state.prev != null) {
      final int result = state.prev ?? 0;
      state = state.copyWith(current: result, prev: null);
    }
  }

  void setLearned() {
    // final words = state.words;
    // words.removeAt(state.current);
    if (state.current > state.words.length - 1) {
      state = state.copyWith(current: 0);
    }
    state = state.copyWith(prev: null);
  }

  void setStarred(bool value) {
    final words = state.words;
    final word = state.getCurrentWord().copyWith(starred: value);
    words[state.current] = word;
    state = state.copyWith(words: words);
  }

  void setWords(List<Word> words) {
    state = state.copyWith(words: words);
  }

  void deleteWord() {
    final words = state.words;
    words.removeAt(state.current);
    state = state.copyWith(words: words);
    setNextWord();
  }

  void setDefaultData() {
    state = state.copyWith(index: 0, prev: null, current: 0);
  }
}
