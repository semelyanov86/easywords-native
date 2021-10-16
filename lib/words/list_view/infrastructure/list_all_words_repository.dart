import 'package:words_native/words/list_view/infrastructure/all_words_local_service.dart';
import 'package:words_native/words/list_view/infrastructure/list_all_words_remote_service.dart';
import 'package:words_native/words/list_view/infrastructure/words_list_repository.dart';

class ListAllWordsRepository extends WordsListRepository {
  final ListAllWordsRemoteService _remoteService;
  final AllWordsLocalService _localService;

  ListAllWordsRepository(this._remoteService, this._localService)
      : super(_remoteService, _localService);
}
