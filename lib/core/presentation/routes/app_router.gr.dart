// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:hooks_riverpod/hooks_riverpod.dart' as _i9;

import '../../../auth/application/auth_notifier.dart' as _i10;
import '../../../auth/presentation/sign_in_page.dart' as _i4;
import '../../../global_settings/domain/translation_directions.dart' as _i11;
import '../../../global_settings/presentation/settings_page.dart' as _i8;
import '../../../language_selector/presentation/language_selector_page.dart'
    as _i5;
import '../../../splash/presentation/splash_page.dart' as _i3;
import '../../../words/card/presentation/cards_list_page.dart' as _i6;
import '../../../words/create_word/presentation/create_word_page.dart' as _i7;

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
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i1.RouteConfig(LanguageSelectorRoute.name, path: '/start'),
        _i1.RouteConfig(CardsListRoute.name, path: '/cards'),
        _i1.RouteConfig(CreateWordRoute.name, path: '/create'),
        _i1.RouteConfig(SettingsRoute.name, path: '/settings')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo<SignInRouteArgs> {
  SignInRoute(
      {_i2.Key? key,
      required _i9.StateNotifierProvider<_i10.AuthNotifier, _i10.AuthState>?
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

  final _i9.StateNotifierProvider<_i10.AuthNotifier, _i10.AuthState>?
      authNotifierProvider;
}

class LanguageSelectorRoute extends _i1.PageRouteInfo {
  const LanguageSelectorRoute() : super(name, path: '/start');

  static const String name = 'LanguageSelectorRoute';
}

class CardsListRoute extends _i1.PageRouteInfo<CardsListRouteArgs> {
  CardsListRoute({_i2.Key? key, required _i11.TranslationDirections direction})
      : super(name,
            path: '/cards',
            args: CardsListRouteArgs(key: key, direction: direction));

  static const String name = 'CardsListRoute';
}

class CardsListRouteArgs {
  const CardsListRouteArgs({this.key, required this.direction});

  final _i2.Key? key;

  final _i11.TranslationDirections direction;
}

class CreateWordRoute extends _i1.PageRouteInfo {
  const CreateWordRoute() : super(name, path: '/create');

  static const String name = 'CreateWordRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '/settings');

  static const String name = 'SettingsRoute';
}
