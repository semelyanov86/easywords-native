import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart';
import 'package:words_native/auth/domain/auth_failure.dart';
import 'package:words_native/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:words_native/core/infrastructure/dio_extensions.dart';

class MainOAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    request.headers['Content-Type'] = 'application/json';
    return httpClient.send(request);
  }
}

class MainAuthenticator {
  final CredentialsStorage _credentialsStorage;
  final Dio _dio;

  static final authorizationEndpoint =
      Uri.parse('https://easywordsapp.ru/api/token');

  static final tokenEndpoint = Uri.parse('https://easywordsapp.ru/api/token');

  static final redirectUrl = Uri.parse('http://localhost/callback');

  static final revocationEndpoint =
      Uri.parse('https://easywordsapp.ru/api/signout');

  static const clientId = 'admin@admin.com';

  static const clientSecret = 'password';

  static const scopes = ['*'];

  MainAuthenticator(this._credentialsStorage, this._dio);

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();
      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          final failureOrCredentials = await refresh(storedCredentials);
          return failureOrCredentials.fold((l) => null, (r) => r);
        }
      }
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  AuthorizationCodeGrant createGrant() {
    return AuthorizationCodeGrant(
        clientId, authorizationEndpoint, tokenEndpoint,
        secret: clientSecret, httpClient: MainOAuthHttpClient());
  }

  Uri getAuthorizationUrl() {
    return tokenEndpoint;
  }

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
      AuthorizationCodeGrant grant, Map<String, String> queryParams) async {
    try {
      final httpClient = await grant.handleAuthorizationResponse(queryParams);
      await _credentialsStorage.save(httpClient.credentials);
      return right(unit);
    } on FormatException {
      return left(AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    final accessToken = await _credentialsStorage
        .read()
        .then((credentials) => credentials?.accessToken);
    try {
      try {
        _dio.getUri(revocationEndpoint,
            options:
                Options(headers: {'Authorization': 'Bearer $accessToken'}));
      } on DioError catch (e) {
        if (e.isNoConnectionError) {
          // Ignoring
        } else {
          rethrow;
        }
      }
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refresh(
      Credentials credentials) async {
    try {
      final refreshedCredentials = await credentials.refresh(
          identifier: clientId,
          secret: clientSecret,
          httpClient: MainOAuthHttpClient());
      await _credentialsStorage.save(refreshedCredentials);
      return right(refreshedCredentials);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(AuthFailure.storage());
    }
  }
}