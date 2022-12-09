import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class Header extends StatelessWidget {
  final String text;
  final bool underline;
  const Header({Key? key, required this.underline, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.percentOfHeight,
      child: Column(
        children: [
          Text(
            text.toUpperCase(),
            style: TextStyles.title,
            textAlign: TextAlign.center,
          ),
          underline ? Assets.lib.src.assets.svg.divider.svg() : Container()
        ],
      ),
    );
  }
}
