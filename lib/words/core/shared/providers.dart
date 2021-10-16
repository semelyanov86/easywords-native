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
import 'package:words_native/words/list_view/application/list_known_words_notifier.dart';
import 'package:words_native/words/list_view/application/list_unknown_words_notifier.dart';
import 'package:words_native/words/list_view/application/list_words_notifier.dart';
import 'package:words_native/words/list_view/application/paginated_words_notifier.dart';
import 'package:words_native/words/list_view/infrastructure/all_words_local_service.dart';
import 'package:words_native/words/list_view/infrastructure/known_words_local_service.dart';
import 'package:words_native/words/list_view/infrastructure/list_all_words_remote_service.dart';
import 'package:words_native/words/list_view/infrastructure/list_all_words_repository.dart';
import 'package:words_native/words/list_view/infrastructure/list_known_words_remote_service.dart';
import 'package:words_native/words/list_view/infrastructure/list_known_words_repository.dart';
import 'package:words_native/words/list_view/infrastructure/list_unknown_words_remote_service.dart';
import 'package:words_native/words/list_view/infrastructure/list_unknown_words_repository.dart';
import 'package:words_native/words/list_view/infrastructure/unknown_words_local_service.dart';

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

final cardsNotifierProvider =
    StateNotifierProvider.autoDispose<CardsNotifier, CardsState>(
  (ref) => CardsNotifier(ref.watch(cardsRepositoryProvider)),
);

final cardsCalculationProvider = StateNotifierProvider.autoDispose<
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

final listAllWordsRemoteServiceProvider = Provider(
  (ref) => ListAllWordsRemoteService(
      ref.watch(dioProvider), ref.watch(wordHeadersCacheProvired)),
);
final listAllWordsLocalServiceProvider = Provider(
  (ref) => AllWordsLocalService(
    ref.watch(sembastProvider),
    ref.watch(globalSettingsNotifierProvider.notifier),
  ),
);
final listAllWordsRepositoryProvider = Provider(
  (ref) => ListAllWordsRepository(
    ref.watch(listAllWordsRemoteServiceProvider),
    ref.watch(listAllWordsLocalServiceProvider),
  ),
);
final listWordsNotifierProvider =
    StateNotifierProvider.autoDispose<ListWordsNotifier, PaginatedWordsState>(
        (ref) => ListWordsNotifier(
              ref.watch(listAllWordsRepositoryProvider),
              ref.watch(globalSettingsNotifierProvider.notifier),
              ref.watch(cardsRepositoryProvider),
            ));
final paginatedWordsNotifier = Provider((ref) => PaginatedWordsNotifier(
    ref.watch(globalSettingsNotifierProvider.notifier),
    ref.watch(cardsRepositoryProvider)));

// Known words
final listKnownWordsRemoteServiceProvider = Provider(
  (ref) => ListKnownWordsRemoteService(
      ref.watch(dioProvider), ref.watch(wordHeadersCacheProvired)),
);
final listKnownWordsLocalServiceProvider = Provider(
  (ref) => KnownWordsLocalService(
    ref.watch(sembastProvider),
    ref.watch(globalSettingsNotifierProvider.notifier),
  ),
);
final listKnownWordsRepositoryProvider = Provider(
  (ref) => ListKnownWordsRepository(
    ref.watch(listKnownWordsRemoteServiceProvider),
    ref.watch(listKnownWordsLocalServiceProvider),
  ),
);
final listKnownWordsNotifierProvider = StateNotifierProvider.autoDispose<
        ListKnownWordsNotifier, PaginatedWordsState>(
    (ref) => ListKnownWordsNotifier(
          ref.watch(listKnownWordsRepositoryProvider),
          ref.watch(globalSettingsNotifierProvider.notifier),
          ref.watch(cardsRepositoryProvider),
        ));

// UnKnown words
final listUnknownWordsRemoteServiceProvider = Provider(
  (ref) => ListUnknownWordsRemoteService(
      ref.watch(dioProvider), ref.watch(wordHeadersCacheProvired)),
);
final listUnknownWordsLocalServiceProvider = Provider(
  (ref) => UnknownWordsLocalService(
    ref.watch(sembastProvider),
    ref.watch(globalSettingsNotifierProvider.notifier),
  ),
);
final listUnknownWordsRepositoryProvider = Provider(
  (ref) => ListUnknownWordsRepository(
    ref.watch(listUnknownWordsRemoteServiceProvider),
    ref.watch(listUnknownWordsLocalServiceProvider),
  ),
);
final listUnknownWordsNotifierProvider = StateNotifierProvider.autoDispose<
        ListUnknownWordsNotifier, PaginatedWordsState>(
    (ref) => ListUnknownWordsNotifier(
          ref.watch(listUnknownWordsRepositoryProvider),
          ref.watch(globalSettingsNotifierProvider.notifier),
          ref.watch(cardsRepositoryProvider),
        ));
