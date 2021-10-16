import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:words_native/auth/presentation/sign_in_page.dart';
import 'package:words_native/global_settings/presentation/settings_page.dart';
import 'package:words_native/language_selector/presentation/language_selector_page.dart';
import 'package:words_native/profile/presentation/change_password_page.dart';
import 'package:words_native/profile/presentation/choose_user_page.dart';
import 'package:words_native/profile/presentation/profile_page.dart';
import 'package:words_native/splash/presentation/splash_page.dart';
import 'package:words_native/statistics/presentation/statistics_page.dart';
import 'package:words_native/words/card/presentation/cards_list_page.dart';
import 'package:words_native/words/create_word/presentation/create_word_page.dart';
import 'package:words_native/words/list_view/presentation/list_all_words_page.dart';
import 'package:words_native/words/list_view/presentation/list_known_words_page.dart';
import 'package:words_native/words/list_view/presentation/list_unknown_words_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage, path: '/sign-in'),
    MaterialRoute(page: LanguageSelectorPage, path: '/start'),
    MaterialRoute(page: CardsListPage, path: '/cards'),
    MaterialRoute(page: CreateWordPage, path: '/create'),
    MaterialRoute(page: SettingsPage, path: '/settings'),
    MaterialRoute(page: ProfilePage, path: '/profile'),
    MaterialRoute(page: ChangePasswordPage, path: '/password'),
    MaterialRoute(page: ChooseUserPage, path: '/share'),
    MaterialRoute(page: StatisticsPage, path: '/statistics'),
    MaterialRoute(page: ListAllWordsPage, path: '/all'),
    MaterialRoute(page: ListKnownWordsPage, path: '/known'),
    MaterialRoute(page: ListUnknownWordsPage, path: '/unknown'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
