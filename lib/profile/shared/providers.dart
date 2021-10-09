import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/shared/providers.dart';
import 'package:words_native/profile/domain/user_notifier.dart';
import 'package:words_native/profile/infrastructure/user_headers_cache.dart';
import 'package:words_native/profile/infrastructure/user_local_service.dart';
import 'package:words_native/profile/infrastructure/user_remote_service.dart';
import 'package:words_native/profile/infrastructure/user_repository.dart';

final profileHeadersCacheProvired = Provider(
  (ref) => UserHeadersCache(ref.watch(sembastProvider)),
);

final profileLocalServiceProvider = Provider(
  (ref) => UserLocalService(ref.watch(sembastProvider)),
);

final profileRemoteServiceProvider = Provider(
  (ref) => UserRemoteService(
    ref.watch(dioProvider),
    ref.watch(profileHeadersCacheProvired),
  ),
);

final profileRepositoryProvider = Provider(
  (ref) => UserRepository(
    ref.watch(profileRemoteServiceProvider),
    ref.watch(profileLocalServiceProvider),
  ),
);

final profileNotifierProvider = StateNotifierProvider<UserNotifier, UserState>(
  (ref) => UserNotifier(ref.watch(profileRepositoryProvider)),
);
