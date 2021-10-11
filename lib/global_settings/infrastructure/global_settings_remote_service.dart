import 'package:dio/dio.dart';
import 'package:words_native/core/infrastructure/dio_extensions.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/core/infrastructure/remote_response.dart';
import 'package:words_native/core/infrastructure/server_headers.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_dto.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_headers_cache.dart';
import 'package:words_native/local_settings/infrastructure/main_local_settings.dart';

class GlobalSettingsRemoteService {
  final Dio _dio;
  final GlobalSettingsHeadersCache _headersCache;

  GlobalSettingsRemoteService(this._dio, this._headersCache);

  Future<RemoteResponse<GlobalSettingsDTO>> getSettings([int page = 1]) async {
    final server = await MainLocalSettings.getServerUrl();
    final requestUri = Uri.https(
        server?.host ?? MainLocalSettings.defaultHost, 'api/settings');

    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(
        requestUri,
        /*options: Options(headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          })*/
      );

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: previousHeaders?.last_page ?? 0,
        );
      } else if (response.statusCode == 200) {
        final headers = ServerHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedData = GlobalSettingsDTO.fromJson(
            response.data['data'] as Map<String, dynamic>);
        return RemoteResponse.withNewData(
          convertedData,
          maxPage: 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection(
          maxPage: 1,
        );
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  Future<RemoteResponse<bool>> setSettings(String key, dynamic value) async {
    final server = await MainLocalSettings.getServerUrl();
    final requestUri = Uri.https(
        server?.host ?? MainLocalSettings.defaultHost, 'api/settings');

    try {
      final response =
          await _dio.postUri(requestUri, data: {'name': key, 'value': value});

      if (response.statusCode == 204) {
        return const RemoteResponse.withNewData(
          true,
          maxPage: 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection(
          maxPage: 1,
        );
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  Future<RemoteResponse<bool>> importWords(String language) async {
    final server = await MainLocalSettings.getServerUrl();
    final requestUri = Uri.https(server?.host ?? MainLocalSettings.defaultHost,
        'api/samples/export/${language}');

    try {
      final response = await _dio.getUri(requestUri);

      if (response.statusCode == 204) {
        return const RemoteResponse.withNewData(
          true,
          maxPage: 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection(
          maxPage: 1,
        );
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
