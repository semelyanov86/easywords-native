import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/shared/providers.dart';
import 'package:words_native/global_settings/domain/global_settings_notifier.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_headers_cache.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_local_service.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_remote_service.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_repository.dart';

final globalSettingsHeadersCacheProvired = Provider(
  (ref) => GlobalSettingsHeadersCache(ref.watch(sembastProvider)),
);

final globalSettingsLocalServiceProvider = Provider(
  (ref) => GlobalSettingsLocalService(ref.watch(sembastProvider)),
);

final globalSettingsRemoteServiceProvider = Provider(
  (ref) => GlobalSettingsRemoteService(
    ref.watch(dioProvider),
    ref.watch(globalSettingsHeadersCacheProvired),
  ),
);

final globalSettingsRepositoryProvider = Provider(
  (ref) => GlobalSettingsRepository(
    ref.watch(globalSettingsRemoteServiceProvider),
    ref.watch(globalSettingsLocalServiceProvider),
  ),
);

final globalSettingsNotifierProvider =
    StateNotifierProvider<GlobalSettingsNotifier, GlobalSettingsState>(
  (ref) => GlobalSettingsNotifier(ref.watch(globalSettingsRepositoryProvider)),
);
