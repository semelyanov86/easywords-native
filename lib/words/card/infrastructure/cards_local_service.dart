import 'package:collection/collection.dart';
import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/global_settings/domain/global_settings.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_local_service.dart';
import 'package:words_native/words/core/infrastructure/pagination_config.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

class CardsLocalService {
  final SembastDatabase _sembastDatabase;
  final GlobalSettingsLocalService _settings;

  final _store = intMapStoreFactory.store('cards');

  CardsLocalService(this._sembastDatabase, this._settings);

  Future<void> upsertPage(List<WordDTO> dtos, int page) async {
    final sembastPage = page - 1;
    final settings = await _settings
        .getSettings(1)
        .then((_) => _ == null ? const GlobalSettings() : _.toDomain());

    await _store
        .records(dtos
            .mapIndexed((index, _) => index + settings.paginate * sembastPage))
        .put(
          _sembastDatabase.instance,
          dtos.map((e) => e.toJson()).toList(),
        );
  }

  Future<void> updateRecord(WordDTO dto) async {
    await _store.update(_sembastDatabase.instance, dto.toJson(),
        finder: Finder(filter: Filter.equals('id', dto.id)));
  }

  Future<List<WordDTO>> getPage(String language, int page) async {
    final settings = await _settings
        .getSettings(1)
        .then((_) => _ == null ? const GlobalSettings() : _.toDomain());
    final sembastPage = page - 1;
    final filters = [
      Filter.equals('language', language),
      Filter.equals('starred', settings.starred_enabled),
    ];
    if (settings.known_enabled) {
      filters.add(Filter.isNull('done_at'));
    }
    final records = await _store.find(
      _sembastDatabase.instance,
      finder: Finder(
        filter: Filter.and([
          Filter.equals('language', language),
          Filter.equals('starred', settings.starred_enabled),
        ]),
        limit: settings.paginate,
        offset: settings.paginate * sembastPage,
      ),
    );
    return records.map((e) => WordDTO.fromJson(e.value)).toList();
  }

  Future<int> getLocalPageCount() async {
    final cardsCount = await _store.count(_sembastDatabase.instance);
    return (cardsCount / PaginationConfig.itemsPerPage).ceil();
  }
}
