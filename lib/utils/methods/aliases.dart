import 'package:flutter_problem_solving/features/app/models/env_model.dart';
import 'package:flutter_problem_solving/modules/dependency_injection/di.dart';
import 'package:flutter_problem_solving/utils/helpers/logging_helper.dart';
import 'package:flutter_problem_solving/utils/router.gr.dart';

final LoggingHelper logIt = getIt<LoggingHelper>();
final EnvModel env = getIt<EnvModel>();
final AppRouter appRouter = getIt<AppRouter>();
