import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/gen/fonts.gen.dart';

class AppTheme {
  static const _defaultFontFamily = FontFamily.tenorSansRegular;

  static ThemeData lightTheme() {
    final theme = ThemeData(
      brightness: Brightness.light,
      fontFamily: _defaultFontFamily,
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: ColorsGuide.inputBackground.withOpacity(0)),
    );
    return theme;
  }
}
