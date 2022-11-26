import 'package:open_fashion/src/core/dimensions/dimension.dart';

extension Dim on num {
  double get percentOfHeight => this * Dimension.height / 100;
  double get percentOfWidth => this * Dimension.width / 100;
}
