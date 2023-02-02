import 'package:dio/dio.dart';
import 'package:flutter_problem_solving/features/app/models/env_model.dart';
import 'package:flutter_problem_solving/modules/dio/dio_client.dart';
import 'package:flutter_problem_solving/modules/token_refresh/dio_token_refresh.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjection {
  Dio dio(EnvModel env, DioTokenRefresh dioTokenRefresh) => initDioClient(env, dioTokenRefresh);
}
