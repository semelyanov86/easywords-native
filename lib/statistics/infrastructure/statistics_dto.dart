import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:words_native/statistics/domain/statistic.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

part 'statistics_dto.freezed.dart';
part 'statistics_dto.g.dart';

@freezed
class StatisticsDTO with _$StatisticsDTO {
  const StatisticsDTO._();
  const factory StatisticsDTO({
    required int all,
    required int starred,
    required int not_dones,
    required int dones,
    required int total_views,
    required int users_count,
    required List<WordDTO> most_viewed,
    required List<WordDTO> added_today,
    required int updated_this_month,
    required int updated_today,
  }) = _StatisticsDTO;

  factory StatisticsDTO.fromJson(Map<String, dynamic> json) =>
      _$StatisticsDTOFromJson(json);

  factory StatisticsDTO.fromDomain(Statistic _) {
    return StatisticsDTO(
      all: _.all,
      starred: _.starred,
      not_dones: _.not_dones,
      dones: _.dones,
      total_views: _.total_views,
      users_count: _.users_count,
      most_viewed:
          _.most_viewed.map((word) => WordDTO.fromDomain(word)).toList(),
      added_today:
          _.added_today.map((word) => WordDTO.fromDomain(word)).toList(),
      updated_this_month: _.updated_this_month,
      updated_today: _.updated_today,
    );
  }

  Statistic toDomain() {
    return Statistic(
      all: all,
      starred: starred,
      not_dones: not_dones,
      dones: dones,
      total_views: total_views,
      users_count: users_count,
      most_viewed: most_viewed.map((wordDto) => wordDto.toDomain()).toList(),
      added_today: added_today.map((wordDto) => wordDto.toDomain()).toList(),
      updated_this_month: updated_this_month,
      updated_today: updated_today,
    );
  }
}
