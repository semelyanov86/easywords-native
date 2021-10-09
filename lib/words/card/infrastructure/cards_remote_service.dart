import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:words_native/core/infrastructure/dio_extensions.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/core/infrastructure/remote_response.dart';
import 'package:words_native/core/infrastructure/server_headers.dart';
import 'package:words_native/local_settings/infrastructure/main_local_settings.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';
import 'package:words_native/words/core/infrastructure/words_headers_cache.dart';

class CardsRemoteService {
  final Dio _dio;
  final WordsHeadersCache _headersCache;

  CardsRemoteService(this._dio, this._headersCache);

  Future<RemoteResponse<List<WordDTO>>> getWords(String language,
      [int page = 1]) async {
    final server = await MainLocalSettings.getServerUrl();

    final requestUri =
        Uri.https(server?.host ?? 'easywordsapp.ru', 'api/words', {
      'page': '$page',
      'language': language,
    });

    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(requestUri,
          options: Options(headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          }));

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: previousHeaders?.last_page ?? 0,
        );
      } else if (response.statusCode == 200) {
        final headers = ServerHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedData = (response.data['data'] as List<dynamic>)
            .map((e) => WordDTO.fromJson(e as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withNewData(
          convertedData,
          maxPage: response.data?['meta']?['last_page'] != null
              ? response.data?['meta']?['last_page'] as int
              : 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return RemoteResponse.noConnection(
          maxPage: previousHeaders?.last_page ?? 0,
        );
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  Future<WordDTO> markViewed(int word) async {
    final server = await MainLocalSettings.getServerUrl();
    final path = 'api/words/${word.toString()}/viewed';

    final requestUri = Uri.https(server?.host ?? 'easywordsapp.ru', path);
    final response = await _dio.getUri(requestUri);
    log(requestUri.toString());
    return WordDTO.fromJson(response.data['data'] as Map<String, dynamic>);
  }

  Future<WordDTO> markKnown(int word, bool value) async {
    final server = await MainLocalSettings.getServerUrl();
    final path = 'api/words/${word.toString()}/known/${value ? 1 : 0}';

    final requestUri = Uri.https(server?.host ?? 'easywordsapp.ru', path);
    final response = await _dio.getUri(requestUri);
    log(requestUri.toString());
    return WordDTO.fromJson(response.data['data'] as Map<String, dynamic>);
  }
}
