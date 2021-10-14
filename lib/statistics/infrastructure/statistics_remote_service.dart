import 'package:dio/dio.dart';
import 'package:words_native/core/infrastructure/dio_extensions.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/core/infrastructure/remote_response.dart';
import 'package:words_native/core/infrastructure/server_headers.dart';
import 'package:words_native/local_settings/infrastructure/main_local_settings.dart';
import 'package:words_native/statistics/infrastructure/statistics_dto.dart';
import 'package:words_native/statistics/infrastructure/statistics_headers_cache.dart';

class StatisticsRemoteService {
  final Dio _dio;
  final StatisticsHeadersCache _headersCache;

  StatisticsRemoteService(this._dio, this._headersCache);

  Future<RemoteResponse<StatisticsDTO>> getStatistics() async {
    final server = await MainLocalSettings.getServerUrl();
    final requestUri = Uri.https(
        server?.host ?? MainLocalSettings.defaultHost, 'api/statistics');

    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(requestUri,
          options: Options(headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          }));

      if (response.statusCode == 304) {
        return const RemoteResponse.notModified(
          maxPage: 0,
        );
      } else if (response.statusCode == 200) {
        final headers = ServerHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedData =
            StatisticsDTO.fromJson(response.data as Map<String, dynamic>);
        return RemoteResponse.withNewData(
          convertedData,
          maxPage: 0,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection(
          maxPage: 0,
        );
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
