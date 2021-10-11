import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_failure.freezed.dart';

@freezed
class ValidationFailure with _$ValidationFailure {
  const ValidationFailure._();
  const factory ValidationFailure.api(String message) = _Api;
}
