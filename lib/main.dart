import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:open_fashion/core/localization/l10n/s.dart';
import 'package:open_fashion/presentation/pages/home/home_page.dart';
import 'package:open_fashion/presentation/utils/dimensions/adaptive_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.bottom,
    ],
  );
  runApp(const OpenFashionApp());
}

class OpenFashionApp extends StatelessWidget {
  const OpenFashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget(
      builder: (context, orientation) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.supportedLocales,
          home: HomePage(),
        );
      },
    );
  }
}
