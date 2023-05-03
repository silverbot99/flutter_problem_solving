import 'dart:async';

import 'package:flutter_problem_solving/utils/methods/aliases.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> initializeSentry() async {
  final dsn = 'https://960fda32a3de4711be985b1c08472a65@o4505118858936320.ingest.sentry.io/4505118860378112';

  await SentryFlutter.init(
    (options) {
      options
        ..dsn = dsn
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
        // We recommend adjusting this value in production.
        ..tracesSampleRate = 1.0
        ..environment = env.env
        ..enableOutOfMemoryTracking = false;
    },
  );
}
