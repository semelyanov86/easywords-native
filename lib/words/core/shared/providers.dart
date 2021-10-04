import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/shared/providers.dart';
import 'package:words_native/words/card/application/cards_notifier.dart';
import 'package:words_native/words/card/infrastructure/cards_local_service.dart';
import 'package:words_native/words/card/infrastructure/cards_remote_service.dart';
import 'package:words_native/words/card/infrastructure/cards_repository.dart';
import 'package:words_native/words/core/infrastructure/words_headers_cache.dart';

final wordHeadersCacheProvired = Provider(
  (ref) => WordsHeadersCache(ref.watch(sembastProvider)),
);

final wordsLocalServiceProvider = Provider(
  (ref) => CardsLocalService(ref.watch(sembastProvider)),
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
