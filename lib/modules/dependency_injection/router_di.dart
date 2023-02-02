import 'package:flutter_problem_solving/utils/router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RouterInjection {
  AppRouter router() => AppRouter();
}
