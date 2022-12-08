import 'package:open_fashion/src/app/secrets/app_secrets.dart';

class FlavorValues {
  final AppSecrets secrets;
  final bool useFakeData;
  final bool showLogs;

  final bool _logSqlStatements;

  const FlavorValues({
    required this.secrets,
    logSqlStatements = false,
    this.showLogs = false,
    this.useFakeData = false,
  }) : _logSqlStatements = showLogs && logSqlStatements;

  bool get logSqlStatements => _logSqlStatements;
}
