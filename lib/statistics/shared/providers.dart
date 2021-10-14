import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/shared/providers.dart';
import 'package:words_native/statistics/domain/statistics_notifier.dart';
import 'package:words_native/statistics/infrastructure/statistics_headers_cache.dart';
import 'package:words_native/statistics/infrastructure/statistics_local_service.dart';
import 'package:words_native/statistics/infrastructure/statistics_remote_service.dart';
import 'package:words_native/statistics/infrastructure/statistics_repository.dart';

final statisticsHeadersCacheProvider = Provider(
  (ref) => StatisticsHeadersCache(ref.watch(sembastProvider)),
);

final statisticsLocalServiceProvider = Provider(
  (ref) => StatisticsLocalService(ref.watch(sembastProvider)),
);

final statisticsRemoteServiceProvider = Provider(
  (ref) => StatisticsRemoteService(
    ref.watch(dioProvider),
    ref.watch(statisticsHeadersCacheProvider),
  ),
);

final statisticsRepositoryProvider = Provider(
  (ref) => StatisticsRepository(
    ref.watch(statisticsRemoteServiceProvider),
    ref.watch(statisticsLocalServiceProvider),
  ),
);

final statisticsNotifierProvider =
    StateNotifierProvider<StatisticsNotifier, StatisticsState>(
  (ref) => StatisticsNotifier(ref.watch(statisticsRepositoryProvider)),
);
