import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/shared/providers.dart';
import 'package:words_native/global_settings/shared/providers.dart';
import 'package:words_native/profile/shared/providers.dart';
import 'package:words_native/words/card/application/cards_notifier.dart';
import 'package:words_native/words/card/infrastructure/cards_calculation_service.dart';
import 'package:words_native/words/card/infrastructure/cards_local_service.dart';
import 'package:words_native/words/card/infrastructure/cards_remote_service.dart';
import 'package:words_native/words/card/infrastructure/cards_repository.dart';
import 'package:words_native/words/core/infrastructure/words_headers_cache.dart';
import 'package:words_native/words/create_word/application/create_card_state_notifier.dart';
import 'package:words_native/words/create_word/application/create_state_notifier.dart';
import 'package:words_native/words/create_word/infrastructure/create_word_remote_service.dart';
import 'package:words_native/words/create_word/infrastructure/create_word_repository.dart';

final wordHeadersCacheProvired = Provider(
  (ref) => WordsHeadersCache(ref.watch(sembastProvider)),
);

final wordsLocalServiceProvider = Provider(
  (ref) => CardsLocalService(
    ref.watch(sembastProvider),
    ref.watch(globalSettingsLocalServiceProvider),
  ),
);

final wordsRemoteServiceProvider = Provider(
  (ref) => CardsRemoteService(
    ref.watch(dioProvider),
    ref.watch(wordHeadersCacheProvired),
  ),
);

final cardsRepositoryProvider = Provider(
  (ref) => CardsRepository(
    ref.watch(wordsRemoteServiceProvider),
    ref.watch(wordsLocalServiceProvider),
  ),
);

final cardsNotifierProvider = StateNotifierProvider<CardsNotifier, CardsState>(
  (ref) => CardsNotifier(ref.watch(cardsRepositoryProvider)),
);

final cardsCalculationProvider = StateNotifierProvider<
    CardsCalculationServiceNotifier,
    CardsCalculationService>((ref) => CardsCalculationServiceNotifier());

final createWordProvider =
    StateNotifierProvider<CreateStateNotifier, CreateState>(
        (ref) => CreateStateNotifier());

final createWordsRemoteServiceProvider = Provider(
  (ref) => CreateWordRemoteService(
    ref.watch(dioProvider),
  ),
);

final createWordsRepositoryProvider = Provider(
  (ref) => CreateWordRepository(
    ref.watch(createWordsRemoteServiceProvider),
  ),
);

final createWordsNotifierProvider =
    StateNotifierProvider<CreateCardNotifier, CreateCardState>(
  (ref) => CreateCardNotifier(
      ref.watch(createWordsRepositoryProvider),
      ref.watch(profileNotifierProvider.notifier),
      ref.watch(createWordProvider.notifier),
      ref.watch(globalSettingsNotifierProvider.notifier)),
);
