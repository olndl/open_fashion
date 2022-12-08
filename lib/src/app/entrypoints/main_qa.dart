import 'package:open_fashion/src/app/flavors/flavor.dart';
import 'package:open_fashion/src/app/flavors/flavor_config.dart';
import 'package:open_fashion/src/app/flavors/flavor_values.dart';
import 'package:open_fashion/src/app/secrets/app_secrets.dart';
import 'package:open_fashion/start_app.dart';

void main() {
  FlavorConfig.initialize(
    flavor: Flavor.qa,
    values: const FlavorValues(
      secrets: AppSecrets.appSecretsQA,
    ),
  );
  startApp();
}
