import 'package:words_native/global_settings/domain/global_settings_notifier.dart';
import 'package:words_native/words/card/infrastructure/cards_repository.dart';
import 'package:words_native/words/list_view/application/paginated_words_notifier.dart';
import 'package:words_native/words/list_view/infrastructure/list_all_words_repository.dart';

class ListWordsNotifier extends PaginatedWordsNotifier {
  final ListAllWordsRepository _repository;
  final GlobalSettingsNotifier _settingsNotifier;
  final CardsRepository _cardsRepository;

  ListWordsNotifier(
      this._repository, this._settingsNotifier, this._cardsRepository)
      : super(_settingsNotifier, _cardsRepository);

  Future<void> getFirstWordsPage() async {
    super.resetState();
    await getNextWordsPage();
  }

  Future<void> getNextWordsPage() async {
    super.getNextPage((page) => _repository.getAllWords(page));
  }
}
