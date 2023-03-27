import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_problem_solving/modules/dependency_injection/di.dart';
import 'package:flutter_problem_solving/utils/router.gr.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../auth/login/blocs/auth_cubit.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> with WidgetsBindingObserver {
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangePlatformBrightness() async {
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          // Remove splash screen after initialization.
          FlutterNativeSplash.remove();

          state.whenOrNull(
            authenticated: (_) {
              context.router.replaceAll([const AppNavigatorRoute()]);
            },
            unauthenticated: () {
              context.router.replaceAll([LoginScreenRoute()]);
            },
          );
        },
        child: RepaintBoundary(
          key: _key,
          child: const AutoRouter(),
        ),
      ),
    );
  }
}
