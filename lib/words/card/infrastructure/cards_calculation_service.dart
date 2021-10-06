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
    @Default([]) List<Word> words,
  }) = _CardsCalculationService;

  Word getCurrentWord() {
    return words[current];
  }

  bool isEmpty() {
    return words.isEmpty;
  }
}

class CardsCalculationServiceNotifier
    extends StateNotifier<CardsCalculationService> {
  CardsCalculationServiceNotifier() : super(const CardsCalculationService());

  void setNextWord() {
    state = state.copyWith(index: state.index + 1);
    state = state.copyWith(current: state.current + 1);
  }

  void setWords(List<Word> words) {
    state = state.copyWith(words: words);
  }
}
