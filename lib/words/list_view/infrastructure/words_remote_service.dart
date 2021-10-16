import 'package:dio/dio.dart';
import 'package:words_native/core/infrastructure/dio_extensions.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/core/infrastructure/remote_response.dart';
import 'package:words_native/core/infrastructure/server_headers.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';
import 'package:words_native/words/core/infrastructure/words_headers_cache.dart';

abstract class WordsRemoteService {
  final Dio _dio;
  final WordsHeadersCache _headersCache;

  WordsRemoteService(
    this._dio,
    this._headersCache,
  );

  Future<RemoteResponse<List<WordDTO>>> getPage({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          },
        ),
      );

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: 0,
        );
      } else if (response.statusCode == 200) {
        final headers = ServerHeaders.parse(response);

        await _headersCache.saveHeaders(requestUri, headers);
        final convertedData = jsonDataSelector(response.data)
            .map((e) => WordDTO.fromJson(e as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withNewData(
          convertedData,
          maxPage: response.data['meta']['last_page'] as int,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection(maxPage: 0);
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  Future<RemoteResponse<List<WordDTO>>> getListWordsPage(int page);
}
