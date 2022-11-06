import 'package:flutter/material.dart';
import 'package:open_fashion/gen/fonts.gen.dart';

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
