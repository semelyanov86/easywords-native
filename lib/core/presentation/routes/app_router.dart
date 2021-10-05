import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:words_native/auth/presentation/sign_in_page.dart';
import 'package:words_native/language_selector/presentation/language_selector_page.dart';
import 'package:words_native/splash/presentation/splash_page.dart';
import 'package:words_native/words/card/presentation/cards_list_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage, path: '/sign-in'),
    MaterialRoute(page: LanguageSelectorPage, path: '/start'),
    MaterialRoute(page: CardsListPage, path: '/cards'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
