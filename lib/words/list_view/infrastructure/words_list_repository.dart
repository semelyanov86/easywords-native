import 'package:dartz/dartz.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/domain/word_failure.dart';
import 'package:words_native/words/list_view/infrastructure/extensions.dart';
import 'package:words_native/words/list_view/infrastructure/words_local_service.dart';
import 'package:words_native/words/list_view/infrastructure/words_remote_service.dart';

abstract class WordsListRepository {
  final WordsRemoteService _remoteService;
  final WordsLocalService _localService;

  WordsListRepository(this._remoteService, this._localService);

  Future<Either<WordFailure, Fresh<List<Word>>>> getAllWords(
    int page,
  ) async {
    try {
      final remotePageItems = await _remoteService.getListWordsPage(page);
      return right(
        await remotePageItems.when(
          noConnection: (maxpage) async => Fresh.no(
            await _localService.getPage(page).then((_) => _.toDomain()),
            isNextPageAvailable: page < await _localService.getLocalPageCount(),
          ),
          notModified: (maxPage) async => Fresh.yes(
            await _localService.getPage(page).then((_) => _.toDomain()),
            isNextPageAvailable: page < maxPage,
          ),
          withNewData: (data, maxPage) async {
            await _localService.upsertPage(data, page);
            return Fresh.yes(
              data.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(WordFailure.api(e.errorCode));
    }
  }
}
