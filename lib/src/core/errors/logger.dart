import 'dart:developer' as dev;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:open_fashion/src/core/constants/firebase_log.dart';

final logger = Logger('');

void initLogger() {
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((log) {
      dev.log(
        log.message,
        time: log.time,
        sequenceNumber: log.sequenceNumber,
        level: log.level.value,
        name: log.loggerName,
        zone: log.zone,
        error: log.error,
        stackTrace: log.stackTrace,
      );
    });
  }
}

void firebaseLogger(String event, String title) {
  switch (event) {
    case FirebaseLog.exploreMoreLog:
      FirebaseAnalytics.instance.logEvent(
        name: FirebaseLog.exploreMoreLog,
        parameters: {'full_text': title},
      );
      break;
  }
}
