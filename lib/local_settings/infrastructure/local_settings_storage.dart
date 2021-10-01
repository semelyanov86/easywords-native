import 'package:words_native/local_settings/domain/local_settings_model.dart';

abstract class LocalSettingsStorage {
  Future<LocalSettingsModel?> read();

  Future<void> save(LocalSettingsModel settings);

  Future<void> clear();
}
