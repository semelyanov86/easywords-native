import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:words_native/auth/application/auth_notifier.dart';
import 'package:words_native/auth/infrastructure/auth_interceptor.dart';
import 'package:words_native/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:words_native/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:words_native/auth/infrastructure/main_authenticator.dart';
import 'package:words_native/local_settings/infrastructure/local_settings_storage.dart';
import 'package:words_native/local_settings/infrastructure/secure_local_settings_storage.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());
final dioForAuthProvider = Provider((ref) => Dio());

final authInterceptorProvider = Provider(
  (ref) => AuthInterceptor(
    ref.watch(mainAuthenticatorProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);

final credentialsStorageProvider = Provider<CredentialsStorage>(
  (ref) => SecureCredentialsStorage(ref.watch(flutterSecureStorageProvider)),
);
final localSettingsProvider = Provider<LocalSettingsStorage>((ref) =>
    SecureLocalSettingsStorage(ref.watch(flutterSecureStorageProvider)));

final mainAuthenticatorProvider = Provider(
  (ref) => MainAuthenticator(ref.watch(credentialsStorageProvider),
      ref.watch(dioForAuthProvider), ref.watch(localSettingsProvider)),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(mainAuthenticatorProvider)),
);
