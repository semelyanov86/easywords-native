import 'package:dartz/dartz.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/domain/word_failure.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';
import 'package:words_native/words/create_word/infrastructure/create_word_remote_service.dart';

class CreateWordRepository {
  final CreateWordRemoteService _remoteService;

  CreateWordRepository(this._remoteService);

  Future<Either<WordFailure, Fresh<Word>>> save(WordDTO word) async {
    try {
      final remoteWordItems = await _remoteService.save(word);
      return right(await remoteWordItems.when(
        noConnection: () async => Fresh.no(
          word.toDomain(),
          isNextPageAvailable: false,
        ),
        validationError: (message) => throw new ValidationException(message),
        created: (data) async {
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: false,
          );
        },
      ));
    } on RestApiException catch (e) {
      return left(WordFailure.api(e.errorCode));
    } on ValidationException catch (e) {
      return left(WordFailure.validation(e.message));
    }
  }
}
