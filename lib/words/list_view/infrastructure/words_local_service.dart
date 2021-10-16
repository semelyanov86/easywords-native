import 'package:collection/collection.dart';
import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/global_settings/domain/global_settings_notifier.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

abstract class WordsLocalService {
  final SembastDatabase _sembastDatabase;
  final GlobalSettingsNotifier _settingsNotifier;
  final _store = intMapStoreFactory.store('allWords');

  WordsLocalService(this._sembastDatabase, this._settingsNotifier);

  Future<void> upsertPage(List<WordDTO> dtos, int page) async {
    final int sembastPage = page - 1;
    final int pagination = _settingsNotifier.getPaginationValue();

    await _store
        .records(
          dtos.mapIndexed((index, _) => index + pagination * sembastPage),
        )
        .put(
          _sembastDatabase.instance,
          dtos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<WordDTO>> getPage(int page) async {
    final sembastPage = page - 1;
    final int pagination = _settingsNotifier.getPaginationValue();

    final records = await _store.find(
      _sembastDatabase.instance,
      finder: Finder(
        limit: pagination,
        offset: pagination * sembastPage,
      ),
    );
    return records.map((e) => WordDTO.fromJson(e.value)).toList();
  }

  Future<int> getLocalPageCount() async {
    final int pagination = _settingsNotifier.getPaginationValue();
    final repoCount = await _store.count(_sembastDatabase.instance);
    return (repoCount / pagination).ceil();
  }
}
