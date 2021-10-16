// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:hooks_riverpod/hooks_riverpod.dart' as _i16;

import '../../../auth/application/auth_notifier.dart' as _i17;
import '../../../auth/presentation/sign_in_page.dart' as _i4;
import '../../../global_settings/domain/translation_directions.dart' as _i18;
import '../../../global_settings/presentation/settings_page.dart' as _i8;
import '../../../language_selector/presentation/language_selector_page.dart'
    as _i5;
import '../../../profile/presentation/change_password_page.dart' as _i10;
import '../../../profile/presentation/choose_user_page.dart' as _i11;
import '../../../profile/presentation/profile_page.dart' as _i9;
import '../../../splash/presentation/splash_page.dart' as _i3;
import '../../../statistics/presentation/statistics_page.dart' as _i12;
import '../../../words/card/presentation/cards_list_page.dart' as _i6;
import '../../../words/create_word/presentation/create_word_page.dart' as _i7;
import '../../../words/list_view/presentation/list_all_words_page.dart' as _i13;
import '../../../words/list_view/presentation/list_known_words_page.dart'
    as _i14;
import '../../../words/list_view/presentation/list_unknown_words_page.dart'
    as _i15;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SplashPage());
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.SignInPage(
              key: args.key, authNotifierProvider: args.authNotifierProvider));
    },
    LanguageSelectorRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LanguageSelectorPage());
    },
    CardsListRoute.name: (routeData) {
      final args = routeData.argsAs<CardsListRouteArgs>();
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.CardsListPage(key: args.key, direction: args.direction));
    },
    CreateWordRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CreateWordPage());
    },
    SettingsRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SettingsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ChangePasswordPage());
    },
    ChooseUserRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ChooseUserPage());
    },
    StatisticsRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.StatisticsPage());
    },
    ListAllWordsRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ListAllWordsPage());
    },
    ListKnownWordsRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.ListKnownWordsPage());
    },
    ListUnknownWordsRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ListUnknownWordsPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i1.RouteConfig(LanguageSelectorRoute.name, path: '/start'),
        _i1.RouteConfig(CardsListRoute.name, path: '/cards'),
        _i1.RouteConfig(CreateWordRoute.name, path: '/create'),
        _i1.RouteConfig(SettingsRoute.name, path: '/settings'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile'),
        _i1.RouteConfig(ChangePasswordRoute.name, path: '/password'),
        _i1.RouteConfig(ChooseUserRoute.name, path: '/share'),
        _i1.RouteConfig(StatisticsRoute.name, path: '/statistics'),
        _i1.RouteConfig(ListAllWordsRoute.name, path: '/all'),
        _i1.RouteConfig(ListKnownWordsRoute.name, path: '/known'),
        _i1.RouteConfig(ListUnknownWordsRoute.name, path: '/unknown')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo<SignInRouteArgs> {
  SignInRoute(
      {_i2.Key? key,
      required _i16.StateNotifierProvider<_i17.AuthNotifier, _i17.AuthState>?
          authNotifierProvider})
      : super(name,
            path: '/sign-in',
            args: SignInRouteArgs(
                key: key, authNotifierProvider: authNotifierProvider));

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key, required this.authNotifierProvider});

  final _i2.Key? key;

  final _i16.StateNotifierProvider<_i17.AuthNotifier, _i17.AuthState>?
      authNotifierProvider;
}

class LanguageSelectorRoute extends _i1.PageRouteInfo {
  const LanguageSelectorRoute() : super(name, path: '/start');

  static const String name = 'LanguageSelectorRoute';
}

class CardsListRoute extends _i1.PageRouteInfo<CardsListRouteArgs> {
  CardsListRoute({_i2.Key? key, required _i18.TranslationDirections direction})
      : super(name,
            path: '/cards',
            args: CardsListRouteArgs(key: key, direction: direction));

  static const String name = 'CardsListRoute';
}

class CardsListRouteArgs {
  const CardsListRouteArgs({this.key, required this.direction});

  final _i2.Key? key;

  final _i18.TranslationDirections direction;
}

class CreateWordRoute extends _i1.PageRouteInfo {
  const CreateWordRoute() : super(name, path: '/create');

  static const String name = 'CreateWordRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '/settings');

  static const String name = 'SettingsRoute';
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '/profile');

  static const String name = 'ProfileRoute';
}

class ChangePasswordRoute extends _i1.PageRouteInfo {
  const ChangePasswordRoute() : super(name, path: '/password');

  static const String name = 'ChangePasswordRoute';
}

class ChooseUserRoute extends _i1.PageRouteInfo {
  const ChooseUserRoute() : super(name, path: '/share');

  static const String name = 'ChooseUserRoute';
}

class StatisticsRoute extends _i1.PageRouteInfo {
  const StatisticsRoute() : super(name, path: '/statistics');

  static const String name = 'StatisticsRoute';
}

class ListAllWordsRoute extends _i1.PageRouteInfo {
  const ListAllWordsRoute() : super(name, path: '/all');

  static const String name = 'ListAllWordsRoute';
}

class ListKnownWordsRoute extends _i1.PageRouteInfo {
  const ListKnownWordsRoute() : super(name, path: '/known');

  static const String name = 'ListKnownWordsRoute';
}

class ListUnknownWordsRoute extends _i1.PageRouteInfo {
  const ListUnknownWordsRoute() : super(name, path: '/unknown');

  static const String name = 'ListUnknownWordsRoute';
}
