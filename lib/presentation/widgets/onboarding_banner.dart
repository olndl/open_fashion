import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/gen/fonts.gen.dart';

class OnboardingBanner extends StatelessWidget {
  const OnboardingBanner({
    Key? key,
    required this.screenWidth,
    required this.screenheight,
    this.image,
    this.text,
  }) : super(key: key);

  final double screenWidth;
  final double screenheight;
  final image;
  final text;

  @override
  Widget build(BuildContext context) {
    //TODO need SliverStack
    return Expanded(
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: <Widget>[
          Image.asset(
            image,
            width: screenWidth,
            height: screenheight,
            fit: BoxFit.cover,
          ),
          Positioned(
            child: Expanded(
              child: Text(
                text.toString().toUpperCase(),
                style: TextStyle(
                  color: ColorsGuide.placeholder,
                  fontSize: 28.0,
                  fontFamily: FontFamily.bodoniModaBoldItalic,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
