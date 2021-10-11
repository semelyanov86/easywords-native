import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:words_native/core/infrastructure/dio_extensions.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/core/infrastructure/remote_creation_response.dart';
import 'package:words_native/local_settings/infrastructure/main_local_settings.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

class CreateWordRemoteService {
  final Dio _dio;

  CreateWordRemoteService(this._dio);

  Future<RemoteCreationResponse<WordDTO>> save(WordDTO word) async {
    final server = await MainLocalSettings.getServerUrl();

    final requestUri =
        Uri.https(server?.host ?? MainLocalSettings.defaultHost, 'api/words');

    try {
      print(word.toJson().toString());
      final response = await _dio.postUri(requestUri, data: word.toJson());

      if (response.statusCode == 201) {
        final convertedData =
            WordDTO.fromJson(response.data['data'] as Map<String, dynamic>);
        return RemoteCreationResponse.created(
          convertedData,
        );
      } else if (response.statusCode == 422) {
        return RemoteCreationResponse.validationError(
            message: response.data['message'] as String);
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteCreationResponse.noConnection();
      } else if (e.response != null) {
        if (e.response?.statusCode == 422) {
          log(e.response.toString());
          return RemoteCreationResponse.validationError(
              message: e.response?.data['message'] as String);
        }
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
