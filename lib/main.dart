import 'dart:async';

import 'package:flutter/material.dart';
import 'package:open_fashion/src/app/open_fashion_app.dart';
import 'package:open_fashion/src/core/errors/logger.dart';
import 'package:open_fashion/src/di/injection_container.dart' as di;

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await di.init();
      initLogger();
      logger.info('Start main');
      runApp(
        const OpenFashionApp(),
      );
    },
    (error, stack) => logger.info(error),
  );
}
