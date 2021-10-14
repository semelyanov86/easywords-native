import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:words_native/words/core/domain/word.dart';

part 'statistic.freezed.dart';

@freezed
class Statistic with _$Statistic {
  const Statistic._();
  const factory Statistic({
    required int all,
    required int starred,
    required int not_dones,
    required int dones,
    required int total_views,
    required int users_count,
    required List<Word> most_viewed,
    required List<Word> added_today,
    required int updated_this_month,
    required int updated_today,
  }) = _Statistic;
}
