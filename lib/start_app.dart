import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_fashion/firebase_options.dart';
import 'package:open_fashion/src/app/open_fashion_app.dart';
import 'package:open_fashion/src/core/errors/logger.dart';
import 'package:open_fashion/src/di/injection_container.dart' as di;

void startApp() {
  runZonedGuarded(
    () async {
      await _initialiseApp();
      runApp(
        OpenFashionApp(),
      );
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}

_initialiseApp() async {
  final bindings = WidgetsFlutterBinding.ensureInitialized();
  bindings.deferFirstFrame();
  await Firebase.initializeApp(
    name: 'openfashionstore-app',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  initLogger();
  logger.info('Initializing dependencies...');
  await di.init();
  bindings.allowFirstFrame();
}
