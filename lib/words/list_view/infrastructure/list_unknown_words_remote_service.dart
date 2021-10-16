import 'package:dio/dio.dart';
import 'package:words_native/core/infrastructure/remote_response.dart';
import 'package:words_native/local_settings/infrastructure/main_local_settings.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';
import 'package:words_native/words/core/infrastructure/words_headers_cache.dart';
import 'package:words_native/words/list_view/infrastructure/words_remote_service.dart';

class ListUnknownWordsRemoteService extends WordsRemoteService {
  ListUnknownWordsRemoteService(
    Dio dio,
    WordsHeadersCache headersCache,
  ) : super(dio, headersCache);

  @override
  Future<RemoteResponse<List<WordDTO>>> getListWordsPage(
    int page,
  ) async {
    final server = await MainLocalSettings.getServerUrl();
    return super.getPage(
      requestUri: Uri.https(
        server?.host ?? MainLocalSettings.defaultHost,
        '/api/not-known',
        {
          'page': '$page',
        },
      ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
    );
  }
}
