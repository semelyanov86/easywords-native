import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:words_native/auth/application/auth_notifier.dart';
import 'package:words_native/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:words_native/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:words_native/auth/infrastructure/main_authenticator.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());
final dioProvider = Provider((ref) => Dio());
final credentialsStorageProvider = Provider<CredentialsStorage>(
  (ref) => SecureCredentialsStorage(ref.watch(flutterSecureStorageProvider)),
);

final mainAuthenticatorProvider = Provider(
  (ref) => MainAuthenticator(
    ref.watch(credentialsStorageProvider),
    ref.watch(dioProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(mainAuthenticatorProvider)),
);
