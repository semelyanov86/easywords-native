import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/global_settings/domain/global_settings_notifier.dart';
import 'package:words_native/words/list_view/infrastructure/words_local_service.dart';

class UnknownWordsLocalService extends WordsLocalService {
  UnknownWordsLocalService(
      SembastDatabase sembastDatabase, GlobalSettingsNotifier settingsNotifier)
      : super(sembastDatabase, settingsNotifier);
}
