import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/firebase_options.dart';
import 'package:open_fashion/src/app/open_fashion_app.dart';
import 'package:open_fashion/src/core/errors/logger.dart';
import 'package:open_fashion/src/di/injection_container.dart' as di;

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        name: 'open-fashion-store',
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await di.init();
      initLogger();
      logger.info('Start main');
      runApp(
        const OpenFashionApp(),
      );
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}
