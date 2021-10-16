import 'package:words_native/words/list_view/infrastructure/unknown_words_local_service.dart';
import 'package:words_native/words/list_view/infrastructure/words_list_repository.dart';

import 'list_unknown_words_remote_service.dart';
import 'unknown_words_local_service.dart';

class ListUnknownWordsRepository extends WordsListRepository {
  final ListUnknownWordsRemoteService _remoteService;
  final UnknownWordsLocalService _localService;

  ListUnknownWordsRepository(this._remoteService, this._localService)
      : super(_remoteService, _localService);
}
