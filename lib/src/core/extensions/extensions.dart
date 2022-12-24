import 'dart:ui';

import 'package:open_fashion/src/core/dimensions/dimension.dart';

extension Dim on num {
  double get percentOfHeight => this * Dimension.height / 100;
  double get percentOfWidth => this * Dimension.width / 100;
}

extension ColorExtension on String {
  Color toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
