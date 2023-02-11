// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:fresh_dio/fresh_dio.dart' as _i13;
import 'package:fresh_graphql/fresh_graphql.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i10;

import '../../features/app/blocs/app_cubit.dart' as _i3;
import '../../features/app/models/auth_model.dart' as _i9;
import '../../features/app/models/env_model.dart' as _i5;
import '../../features/app/models/theme_model.dart' as _i12;
import '../../features/auth/login/blocs/auth_cubit.dart' as _i19;
import '../../features/auth/login/networking/auth_repository.dart' as _i18;
import '../../utils/helpers/logging_helper.dart' as _i11;
import '../../utils/router.gr.dart' as _i4;
import '../secure_storage/secure_auth_storage.dart' as _i14;
import '../token_refresh/dio_token_refresh.dart' as _i15;
import '../token_refresh/graphql_token_refresh.dart' as _i7;
import 'dio_client_di.dart' as _i24;
import 'graphql_client_di.dart' as _i23;
import 'network_info_di.dart' as _i22;
import 'router_di.dart' as _i20;
import 'secure_storage_di.dart' as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final routerInjection = _$RouterInjection();
  final secureStorageInjection = _$SecureStorageInjection();
  final networkInfoInjection = _$NetworkInfoInjection();
  final graphQLInjection = _$GraphQLInjection();
  final dioInjection = _$DioInjection();
  gh.lazySingleton<_i3.AppCubit>(() => _i3.AppCubit());
  gh.factory<_i4.AppRouter>(() => routerInjection.router());
  await gh.singletonAsync<_i5.EnvModel>(
    () => _i5.EnvModel.create(),
    preResolve: true,
  );
  gh.factory<_i6.FlutterSecureStorage>(() => secureStorageInjection.storage());
  gh.lazySingleton<_i7.GraphQLTokenRefresh>(() => _i7.GraphQLTokenRefresh(
        get<_i5.EnvModel>(),
        get<_i8.TokenStorage<_i9.AuthModel>>(),
      ));
  gh.factory<_i10.InternetConnectionCheckerPlus>(
      () => networkInfoInjection.networkInfo);
  gh.singleton<_i11.LoggingHelper>(_i11.LoggingHelper());
  await gh.singletonAsync<_i12.ThemeModel>(
    () => _i12.ThemeModel.create(),
    preResolve: true,
  );
  gh.lazySingleton<_i13.TokenStorage<_i9.AuthModel>>(
      () => _i14.SecureAuthStorage(get<_i6.FlutterSecureStorage>()));
  gh.lazySingleton<_i15.DioTokenRefresh>(
      () => _i15.DioTokenRefresh(get<_i13.TokenStorage<_i9.AuthModel>>()));
  gh.factory<_i16.GraphQLClient>(() => graphQLInjection.graphql(
        get<_i5.EnvModel>(),
        get<_i7.GraphQLTokenRefresh>(),
      ));
  gh.factory<_i17.Dio>(() => dioInjection.dio(
        get<_i5.EnvModel>(),
        get<_i15.DioTokenRefresh>(),
      ));
  gh.lazySingleton<_i18.AuthRepository>(
      () => _i18.AuthRepository(get<_i17.Dio>()));
  gh.lazySingleton<_i19.AuthCubit>(() => _i19.AuthCubit(
        get<_i18.AuthRepository>(),
        get<_i15.DioTokenRefresh>(),
      ));
  return get;
}

class _$RouterInjection extends _i20.RouterInjection {}

class _$SecureStorageInjection extends _i21.SecureStorageInjection {}

class _$NetworkInfoInjection extends _i22.NetworkInfoInjection {}

class _$GraphQLInjection extends _i23.GraphQLInjection {}

class _$DioInjection extends _i24.DioInjection {}
