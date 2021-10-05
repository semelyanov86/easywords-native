import 'package:collection/collection.dart';
import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/words/core/infrastructure/pagination_config.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';

class CardsLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('cards');

  CardsLocalService(this._sembastDatabase);

  Future<void> upsertPage(List<WordDTO> dtos, int page) async {
    final sembastPage = page - 1;

    await _store
        .records(dtos.mapIndexed(
            (index, _) => index + PaginationConfig.itemsPerPage * sembastPage))
        .put(
          _sembastDatabase.instance,
          dtos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<WordDTO>> getPage(int page) async {
    final sembastPage = page - 1;
    final records = await _store.find(
      _sembastDatabase.instance,
      finder: Finder(
        limit: PaginationConfig.itemsPerPage,
        offset: PaginationConfig.itemsPerPage * sembastPage,
      ),
    );
    return records.map((e) => WordDTO.fromJson(e.value)).toList();
  }

  Future<int> getLocalPageCount() async {
    final cardsCount = await _store.count(_sembastDatabase.instance);
    return (cardsCount / PaginationConfig.itemsPerPage).ceil();
  }
}
