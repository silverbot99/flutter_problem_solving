import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_problem_solving/features/app/blocs/app_cubit.dart';
import 'package:flutter_problem_solving/i18n/strings.g.dart';
import 'package:flutter_problem_solving/modules/dependency_injection/di.dart';
import 'package:flutter_problem_solving/utils/constants.dart';
import 'package:flutter_problem_solving/utils/methods/aliases.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:statsfl/statsfl.dart';

import '../../theme/text/app_typography.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppTypography appTypography = AppTypography.create(fontFamily: $constants.theme.defaultFontFamily);

  @override
  Widget build(BuildContext context) {

    return StatsFl(
      maxFps: 120,
      align: Alignment.bottomRight,
      isEnabled: false,
      child: BlocProvider(
        create: (context) => getIt<AppCubit>(),
        child: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return MaterialApp.router(
              /// Theme configuration.
              theme: ThemeData(
                textTheme: appTypography.black.materialTextTheme,
                typography: appTypography.materialTypography,
              ),

              /// Environment configuration.
              title: $constants.appTitle,
              debugShowCheckedModeBanner: env.debugShowCheckedModeBanner,
              debugShowMaterialGrid: env.debugShowMaterialGrid,

              /// AutoRouter configuration.
              routerDelegate: AutoRouterDelegate(
                appRouter,
                // Sentrie's tracking navigation events with the usage of autorouter.
                navigatorObservers: () => [
                  SentryNavigatorObserver(),
                ],
              ),
              routeInformationParser: appRouter.defaultRouteParser(),

              /// EasyLocalization configuration.
              locale: TranslationProvider.of(context).flutterLocale,
              supportedLocales: LocaleSettings.supportedLocales,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
            );
          },
        ),
      ),
    );
  }
}
