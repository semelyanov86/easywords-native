import 'package:dartz/dartz.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/words/card/infrastructure/cards_local_service.dart';
import 'package:words_native/words/card/infrastructure/cards_remote_service.dart';
import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/domain/word_failure.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

class CardsRepository {
  final CardsRemoteService _remoteService;
  final CardsLocalService _localService;

  CardsRepository(this._remoteService, this._localService);

  Future<Either<WordFailure, Fresh<List<Word>>>> getWords(String language,
      [int page = 1]) async {
    try {
      final remoteWordItems = await _remoteService.getWords(language, page);
      return right(await remoteWordItems.when(
        noConnection: (maxPage) async => Fresh.no(
          await _localService.getPage(language, page).then((_) => _.toDomain()),
          isNextPageAvailable: page < maxPage,
        ),
        notModified: (maxPage) async => Fresh.yes(
          await _localService.getPage(language, page).then((_) => _.toDomain()),
          isNextPageAvailable: page < maxPage,
        ),
        withNewData: (data, maxPage) async {
          await _localService.upsertPage(data, page);
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: page < maxPage,
          );
        },
      ));
    } on RestApiException catch (e) {
      return left(WordFailure.api(e.errorCode));
    }
  }

  Future<Either<WordFailure, WordDTO?>> markFlipped(int word) async {
    try {
      final actionCompleted = await _remoteService.markViewed(word);
      return right(actionCompleted);
    } on RestApiException catch (e) {
      return left(WordFailure.api(e.errorCode));
    }
  }

  Future<Either<WordFailure, WordDTO?>> markKnown(Word word) async {
    try {
      final actionCompleted =
          await _remoteService.markKnown(word.id, word.done_at == null);
      if (actionCompleted != null) {
        await _localService.updateRecord(actionCompleted);
      }
      return right(actionCompleted);
    } on RestApiException catch (e) {
      return left(WordFailure.api(e.errorCode));
    }
  }

  Future<WordDTO?> shareWord(int word, int user) async {
    return _remoteService.shareWord(word, user);
  }

  Future<void> deleteWord(int word) async {
    return _remoteService.deleteWord(word);
  }

  Future<Either<WordFailure, WordDTO?>> starWord(Word word) async {
    try {
      final actionCompleted =
          await _remoteService.starWord(word.id, !word.starred);
      if (actionCompleted != null) {
        await _localService.updateRecord(actionCompleted);
      }
      return right(actionCompleted);
    } on RestApiException catch (e) {
      return left(WordFailure.api(e.errorCode));
    }
  }
}

extension DTOListToDomainList on List<WordDTO> {
  List<Word> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
