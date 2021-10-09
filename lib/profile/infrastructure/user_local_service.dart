import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/profile/infrastructure/user_dto.dart';

class UserLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tableName);
  static const tableName = 'profile';

  UserLocalService(this._sembastDatabase);

  Future<void> setProfile(UserDTO dto) async {
    await _store.record(tableName).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  Future<UserDTO?> getProfile() async {
    final json = await _store.record(tableName).get(_sembastDatabase.instance);
    return json == null ? null : UserDTO.fromJson(json);
  }

  Future<void> deleteProfile() async {
    await _store.record(tableName).delete(_sembastDatabase.instance);
  }
}
