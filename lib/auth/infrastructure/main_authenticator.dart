import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart';
import 'package:words_native/auth/domain/auth_failure.dart';
import 'package:words_native/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:words_native/core/infrastructure/dio_extensions.dart';
import 'package:words_native/local_settings/infrastructure/local_settings_storage.dart';

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
  final LocalSettingsStorage _localSettingsStorage;

  final Dio _dio;

  static final authorizationEndpoint =
      Uri.parse('https://easywordsapp.ru/api/token');

  static final tokenEndpoint = Uri.parse('https://easywordsapp.ru/api/token');

  static final redirectUrl = Uri.parse('http://localhost/callback');

  static const revocationEndpoint = '/api/signout';

  static const signInEndpoint = '/api/token';

  static const defaultUrl = 'https://easywordsapp.ru';

  static const clientId = 'admin@admin.com';

  static const clientSecret = 'password';

  static const scopes = ['*'];

  MainAuthenticator(
      this._credentialsStorage, this._dio, this._localSettingsStorage);

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
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final accessToken = await _credentialsStorage
          .read()
          .then((credentials) => credentials?.accessToken);
      final revocationUrl = await _localSettingsStorage
          .read()
          .then((settings) => settings?.server ?? defaultUrl);
      try {
        await _dio.getUri(Uri.parse(revocationUrl + revocationEndpoint),
            options: Options(headers: {
              'Authorization': 'Bearer $accessToken',
              'Content-Type': 'application/json',
              'Accept': 'application/json'
            }));
      } on DioError catch (e) {
        if (e.isNoConnectionError) {
          // Ignoring
        } else {
          rethrow;
        }
      }
      return clearCredentialsStorage();
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> clearCredentialsStorage() async {
    try {
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signIn(
      String email, String password, String device, Uri url) async {
    final loginUrl = await _localSettingsStorage
        .read()
        .then((settings) => settings?.server ?? defaultUrl);
    try {
      try {
        final Response response = await _dio.postUri(
            Uri.parse(loginUrl + signInEndpoint),
            data: {'email': email, 'password': password, 'device_name': device},
            options: Options(headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json'
            }));
        final String token = response.data['token'] as String;
        await _credentialsStorage.save(Credentials(token));
      } on DioError catch (e) {
        if (e.isNoConnectionError) {
          // Ignoring
        } else {
          if (e.response != null && e.response?.statusCode == 422) {
            return left(
                const AuthFailure.server('Login or password does not match!'));
          }
          rethrow;
        }
      }
      // await _credentialsStorage.save(Credentials(response.));
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
      return left(const AuthFailure.storage());
    }
  }
}
