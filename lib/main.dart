import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:open_fashion/core/errors/logger.dart';
import 'package:open_fashion/core/localization/l10n/s.dart';
import 'package:open_fashion/core/theme/app_theme.dart';
import 'package:open_fashion/di/service_locator.dart';
import 'package:open_fashion/presentation/pages/home/home_page.dart';
import 'package:open_fashion/presentation/utils/dimensions/adaptive_widget.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await setupLocator();
      initLogger();
      logger.info('Start main');
      runApp(
        const OpenFashionApp(),
      );
    },
    (error, stack) => logger.info(error),
  );
}

class OpenFashionApp extends StatelessWidget {
  const OpenFashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget(
      builder: (context, orientation) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.supportedLocales,
          theme: AppTheme.lightTheme(),
          home: const HomePage(),
        );
      },
    );
  }
}
