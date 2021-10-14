import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_failure.freezed.dart';

@freezed
class StatisticsFailure with _$StatisticsFailure {
  const StatisticsFailure._();
  const factory StatisticsFailure.api(int? errorCode) = _Api;
}
