import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class MainHeader extends StatelessWidget {
  final String text;
  const MainHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text.toUpperCase(),
          style: TextStyles.title,
          textAlign: TextAlign.center,
        ),
        Assets.lib.src.assets.svg.divider.svg(),
      ],
    );
  }
}
