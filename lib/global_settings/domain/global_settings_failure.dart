import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_settings_failure.freezed.dart';

@freezed
class GlobalSettingsFailure with _$GlobalSettingsFailure {
  const GlobalSettingsFailure._();
  const factory GlobalSettingsFailure.api(int? errorCode) = _Api;
}
