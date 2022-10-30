import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/presentation/widgets/button_in.dart';

import '../../core/theme/colors_guide.dart';
import '../../gen/fonts.gen.dart';

class OnboardingBanner extends StatelessWidget {
  const OnboardingBanner({
    Key? key,
    required this.image,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.count,
  }) : super(key: key);

  final String image;
  final int count;
  final String firstText;
  final String secondText;
  final String thirdText;

  @override
  Widget build(BuildContext context) {
    //TODO need SliverStack
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 50,
          top: 180,
          child: Text(
            firstText.toString().toUpperCase(),
            style: TextStyle(
              color: ColorsGuide.placeholder,
              fontSize: 38.0,
              fontFamily: FontFamily.bodoniModaBoldItalic,
            ),
          ),
        ),
        Positioned(
          left: 80,
          top: 220,
          child: Text(
            secondText.toString().toUpperCase(),
            style: TextStyle(
              color: ColorsGuide.placeholder,
              fontSize: 38.0,
              fontFamily: FontFamily.bodoniModaBoldItalic,
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 260,
          child: Text(
            thirdText.toString().toUpperCase(),
            style: TextStyle(
              color: ColorsGuide.placeholder,
              fontSize: 38.0,
              fontFamily: FontFamily.bodoniModaBoldItalic,
            ),
          ),
        ),
        Positioned(left: 50, top: 400, child: ButtonIn()),
      ],
    );
  }
}
