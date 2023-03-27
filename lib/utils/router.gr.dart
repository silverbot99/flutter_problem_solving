// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:reactive_forms/reactive_forms.dart' as _i7;

import '../features/app/app_navigator.dart' as _i3;
import '../features/app/app_wrapper.dart' as _i1;
import '../features/auth/login/blocs/auth_cubit.dart' as _i6;
import '../features/auth/login/presentation/login_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AppWrapper(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(
          key: args.key,
          cubit: args.cubit,
          form: args.form,
        ),
      );
    },
    AppNavigatorRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AppNavigator(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          AppWrapperRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              LoginScreenRoute.name,
              path: 'login',
              parent: AppWrapperRoute.name,
            ),
            _i4.RouteConfig(
              AppNavigatorRoute.name,
              path: 'home',
              parent: AppWrapperRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AppWrapper]
class AppWrapperRoute extends _i4.PageRouteInfo<void> {
  const AppWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AppWrapperRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppWrapperRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({
    _i5.Key? key,
    _i6.AuthCubit? cubit,
    _i7.FormGroup? form,
  }) : super(
          LoginScreenRoute.name,
          path: 'login',
          args: LoginScreenRouteArgs(
            key: key,
            cubit: cubit,
            form: form,
          ),
        );

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({
    this.key,
    this.cubit,
    this.form,
  });

  final _i5.Key? key;

  final _i6.AuthCubit? cubit;

  final _i7.FormGroup? form;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key, cubit: $cubit, form: $form}';
  }
}

/// generated route for
/// [_i3.AppNavigator]
class AppNavigatorRoute extends _i4.PageRouteInfo<void> {
  const AppNavigatorRoute()
      : super(
          AppNavigatorRoute.name,
          path: 'home',
        );

  static const String name = 'AppNavigatorRoute';
}
