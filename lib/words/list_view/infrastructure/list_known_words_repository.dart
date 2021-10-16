import 'package:words_native/words/list_view/infrastructure/words_list_repository.dart';

import 'known_words_local_service.dart';
import 'list_known_words_remote_service.dart';

class ListKnownWordsRepository extends WordsListRepository {
  final ListKnownWordsRemoteService _remoteService;
  final KnownWordsLocalService _localService;

  ListKnownWordsRepository(this._remoteService, this._localService)
      : super(_remoteService, _localService);
}
