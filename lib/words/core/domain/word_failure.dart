import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_failure.freezed.dart';

@freezed
class WordFailure with _$WordFailure {
  const WordFailure._();
  const factory WordFailure.api(int? errorCode) = _Api;
}
