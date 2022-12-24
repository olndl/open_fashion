import 'package:flutter/material.dart';
import 'package:open_fashion/src/gen/fonts.gen.dart';

abstract class TextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 18,
    //height: 18 / 40,
    fontWeight: FontWeight.normal,
    letterSpacing: 4,
    fontFamily: FontFamily.tenorSansRegular,
  );
  static const TextStyle subTitle14 = TextStyle(
    fontSize: 14,
    //height: 14 / 20,
    fontWeight: FontWeight.normal,
    letterSpacing: 2,
    fontFamily: FontFamily.tenorSansRegular,
  );
  static const TextStyle subTitle16 = TextStyle(
    fontSize: 16,
    //height: 16 / 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 2,
    fontFamily: FontFamily.tenorSansRegular,
  );
  static const TextStyle bodyL = TextStyle(
    fontSize: 16,
    //height: 16 / 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    fontFamily: FontFamily.tenorSansRegular,
  );
  static const TextStyle bodyM = TextStyle(
    fontSize: 14,
    //height: 14 / 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    fontFamily: FontFamily.tenorSansRegular,
  );
  static const TextStyle bodyS = TextStyle(
    fontSize: 12,
    //height: 12 / 18,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    fontFamily: FontFamily.tenorSansRegular,
  );
  static const TextStyle price = TextStyle(
    fontSize: 15,
    //height: 15 / 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    fontFamily: FontFamily.tenorSansRegular,
  );
}

class AppSizes {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
}
