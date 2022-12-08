import 'package:open_fashion/src/app/app_secrets.dart';
import 'package:open_fashion/src/app/flavors/flavor.dart';
import 'package:open_fashion/src/app/flavors/flavor_config.dart';
import 'package:open_fashion/src/app/flavors/flavor_values.dart';
import 'package:open_fashion/start_app.dart';

void main() {
  FlavorConfig.initialize(
    flavor: Flavor.dev,
    values: const FlavorValues(
      secrets: AppSecrets.appSecretsDev,
      logSqlStatements: true,
      showLogs: true,
      useFakeData: false,
    ),
  );
  startApp();
}
