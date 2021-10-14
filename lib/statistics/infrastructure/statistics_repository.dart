import 'package:dartz/dartz.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/statistics/domain/statistic.dart';
import 'package:words_native/statistics/domain/statistics_failure.dart';
import 'package:words_native/statistics/infrastructure/statistics_local_service.dart';
import 'package:words_native/statistics/infrastructure/statistics_remote_service.dart';

class StatisticsRepository {
  final StatisticsRemoteService _remoteService;
  final StatisticsLocalService _localService;

  static const defaultStatistics = Statistic(
      all: 0,
      starred: 0,
      not_dones: 0,
      dones: 0,
      total_views: 0,
      users_count: 0,
      most_viewed: [],
      added_today: [],
      updated_this_month: 0,
      updated_today: 0);

  StatisticsRepository(this._remoteService, this._localService);

  Future<Either<StatisticsFailure, Fresh<Statistic>>> getStatistics() async {
    try {
      final remoteStatistic = await _remoteService.getStatistics();
      return right(await remoteStatistic.when(
        noConnection: (maxPage) async => Fresh.no(
          await _localService
              .getStatistic()
              .then((dto) => dto == null ? defaultStatistics : dto.toDomain()),
        ),
        notModified: (maxPage) async => Fresh.yes(
          await _localService
              .getStatistic()
              .then((_) => _ == null ? defaultStatistics : _.toDomain()),
        ),
        withNewData: (data, maxPage) async {
          await _localService.setStatistic(data);
          return Fresh.yes(
            data.toDomain(),
          );
        },
      ));
    } on RestApiException catch (e) {
      return left(StatisticsFailure.api(e.errorCode));
    }
  }
}
