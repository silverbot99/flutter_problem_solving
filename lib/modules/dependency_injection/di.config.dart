// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i15;
import 'package:flutter_problem_solving/features/app/blocs/app_cubit.dart'
    as _i3;
import 'package:flutter_problem_solving/features/app/models/auth_model.dart'
    as _i10;
import 'package:flutter_problem_solving/features/app/models/env_model.dart'
    as _i5;
import 'package:flutter_problem_solving/features/auth/login/blocs/auth_cubit.dart'
    as _i18;
import 'package:flutter_problem_solving/features/auth/login/networking/auth_repository.dart'
    as _i17;
import 'package:flutter_problem_solving/modules/dependency_injection/dio_client_di.dart'
    as _i20;
import 'package:flutter_problem_solving/modules/dependency_injection/graphql_client_di.dart'
    as _i23;
import 'package:flutter_problem_solving/modules/dependency_injection/network_info_di.dart'
    as _i22;
import 'package:flutter_problem_solving/modules/dependency_injection/router_di.dart'
    as _i19;
import 'package:flutter_problem_solving/modules/dependency_injection/secure_storage_di.dart'
    as _i21;
import 'package:flutter_problem_solving/modules/secure_storage/secure_auth_storage.dart'
    as _i11;
import 'package:flutter_problem_solving/modules/token_refresh/dio_token_refresh.dart'
    as _i12;
import 'package:flutter_problem_solving/modules/token_refresh/graphql_token_refresh.dart'
    as _i13;
import 'package:flutter_problem_solving/utils/helpers/logging_helper.dart'
    as _i8;
import 'package:flutter_problem_solving/utils/router.gr.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:fresh_dio/fresh_dio.dart' as _i9;
import 'package:fresh_graphql/fresh_graphql.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final routerInjection = _$RouterInjection();
    final secureStorageInjection = _$SecureStorageInjection();
    final networkInfoInjection = _$NetworkInfoInjection();
    final dioInjection = _$DioInjection();
    final graphQLInjection = _$GraphQLInjection();
    gh.lazySingleton<_i3.AppCubit>(() => _i3.AppCubit());
    gh.factory<_i4.AppRouter>(() => routerInjection.router());
    await gh.singletonAsync<_i5.EnvModel>(
      () => _i5.EnvModel.create(),
      preResolve: true,
    );
    gh.factory<_i6.FlutterSecureStorage>(
        () => secureStorageInjection.storage());
    gh.factory<_i7.InternetConnectionCheckerPlus>(
        () => networkInfoInjection.networkInfo);
    gh.singleton<_i8.LoggingHelper>(_i8.LoggingHelper());
    gh.lazySingleton<_i9.TokenStorage<_i10.AuthModel>>(
        () => _i11.SecureAuthStorage(gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i12.DioTokenRefresh>(
        () => _i12.DioTokenRefresh(gh<_i9.TokenStorage<_i10.AuthModel>>()));
    gh.lazySingleton<_i13.GraphQLTokenRefresh>(() => _i13.GraphQLTokenRefresh(
          gh<_i5.EnvModel>(),
          gh<_i14.TokenStorage<_i10.AuthModel>>(),
        ));
    gh.factory<_i15.Dio>(() => dioInjection.dio(
          gh<_i5.EnvModel>(),
          gh<_i12.DioTokenRefresh>(),
        ));
    gh.factory<_i16.GraphQLClient>(() => graphQLInjection.graphql(
          gh<_i5.EnvModel>(),
          gh<_i13.GraphQLTokenRefresh>(),
        ));
    gh.lazySingleton<_i17.AuthRepository>(
        () => _i17.AuthRepository(gh<_i15.Dio>()));
    gh.lazySingleton<_i18.AuthCubit>(() => _i18.AuthCubit(
          gh<_i17.AuthRepository>(),
          gh<_i12.DioTokenRefresh>(),
        ));
    return this;
  }
}

class _$RouterInjection extends _i19.RouterInjection {}

class _$DioInjection extends _i20.DioInjection {}

class _$SecureStorageInjection extends _i21.SecureStorageInjection {}

class _$NetworkInfoInjection extends _i22.NetworkInfoInjection {}

class _$GraphQLInjection extends _i23.GraphQLInjection {}
