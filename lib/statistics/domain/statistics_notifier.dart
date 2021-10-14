import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/statistics/domain/statistic.dart';
import 'package:words_native/statistics/domain/statistics_failure.dart';
import 'package:words_native/statistics/infrastructure/statistics_repository.dart';

part 'statistics_notifier.freezed.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const StatisticsState._();
  const factory StatisticsState.initial() = _Initial;
  const factory StatisticsState.loadInProgress() = _LoadInProgress;
  const factory StatisticsState.loadSuccess(Fresh<Statistic> statistic) =
      _LoadSuccess;
  const factory StatisticsState.loadFailure(StatisticsFailure failure) =
      _LoadFailure;
}

class StatisticsNotifier extends StateNotifier<StatisticsState> {
  final StatisticsRepository _repository;

  StatisticsNotifier(this._repository) : super(const StatisticsState.initial());

  Future<void> getStatistics() async {
    state = const StatisticsState.loadInProgress();
    final failureOrRepoDetail = await _repository.getStatistics();
    state = failureOrRepoDetail.fold(
      (l) => StatisticsState.loadFailure(l),
      (r) => StatisticsState.loadSuccess(r),
    );
  }
}
