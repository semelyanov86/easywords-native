import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/statistics/infrastructure/statistics_dto.dart';

class StatisticsLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tableName);
  static const tableName = 'statistics';

  StatisticsLocalService(this._sembastDatabase);

  Future<void> setStatistic(StatisticsDTO dto) async {
    await _store.record(tableName).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  Future<StatisticsDTO?> getStatistic() async {
    final json = await _store.record(tableName).get(_sembastDatabase.instance);
    return json == null ? null : StatisticsDTO.fromJson(json);
  }

  Future<void> deleteStatistic() async {
    await _store.record(tableName).delete(_sembastDatabase.instance);
  }
}
