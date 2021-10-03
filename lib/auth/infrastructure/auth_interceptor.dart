import 'package:dio/dio.dart';
import 'package:words_native/auth/application/auth_notifier.dart';
import 'package:words_native/auth/infrastructure/main_authenticator.dart';

class AuthInterceptor extends Interceptor {
  final MainAuthenticator _authenticator;
  final AuthNotifier _authNotifier;
  final Dio _dio;

  AuthInterceptor(this._authenticator, this._authNotifier, this._dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final credentials = await _authenticator.getSignedInCredentials();
    final modifiedOptions = options
      ..headers.addAll(credentials == null
          ? {}
          : {'Authorization': 'bearer ${credentials.accessToken}'});
    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final errorResponse = err.response;
    if (errorResponse != null && errorResponse.statusCode == 401) {
      final credentials = await _authenticator.getSignedInCredentials();
      credentials != null && credentials.canRefresh
          ? await _authenticator.refresh(credentials)
          : await _authenticator.clearCredentialsStorage();
      await _authNotifier.checkAndUpdateAuthStatus();

      final refreshedCredentials =
          await _authenticator.getSignedInCredentials();
      if (refreshedCredentials != null) {
        handler.resolve(await _dio.fetch(
          errorResponse.requestOptions
            ..headers['Authorization'] =
                'Bearer ${refreshedCredentials.accessToken}',
        ));
      }
    } else {
      handler.next(err);
    }
  }
}
