import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_dto.dart';

class GlobalSettingsLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tableName);
  static const tableName = 'global_settings';

  GlobalSettingsLocalService(this._sembastDatabase);

  Future<void> setSettings(GlobalSettingsDTO dto, [int page = 1]) async {
    await _store.record(tableName).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  Future<GlobalSettingsDTO?> getSettings([int page = 1]) async {
    final json = await _store.record(tableName).get(_sembastDatabase.instance);
    return json == null ? null : GlobalSettingsDTO.fromJson(json);
  }

  Future<void> deleteSettings([int page = 1]) async {
    await _store.record(tableName).delete(_sembastDatabase.instance);
  }
}
