import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/profile/infrastructure/short_user_dto.dart';

class ShortUserLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tableName);
  static const tableName = 'short_users';

  ShortUserLocalService(this._sembastDatabase);

  Future<void> upsertUsers(List<ShortUserDTO> dtos) async {
    await _store.delete(_sembastDatabase.instance,
        finder: Finder(filter: Filter.greaterThan('id', 0)));
    await _store.addAll(
        _sembastDatabase.instance, dtos.map((e) => e.toJson()).toList());
  }

  Future<List<ShortUserDTO>> getUsers() async {
    final records = await _store.find(
      _sembastDatabase.instance,
      finder: Finder(
        filter: Filter.greaterThan('id', 0),
      ),
    );
    return records.map((e) => ShortUserDTO.fromJson(e.value)).toList();
  }

  Future<void> deleteUsers() async {
    await _store.record(tableName).delete(_sembastDatabase.instance);
  }
}
