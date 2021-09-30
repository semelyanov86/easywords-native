// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../../auth/presentation/sign_in_page.dart' as _i4;
import '../../../language_selector/presentation/language_selector_page.dart'
    as _i5;
import '../../../splash/presentation/splash_page.dart' as _i3;

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
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignInPage());
    },
    LanguageSelectorRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LanguageSelectorPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i1.RouteConfig(LanguageSelectorRoute.name, path: '/start')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

class LanguageSelectorRoute extends _i1.PageRouteInfo {
  const LanguageSelectorRoute() : super(name, path: '/start');

  static const String name = 'LanguageSelectorRoute';
}