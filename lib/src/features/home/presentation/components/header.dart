import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/gap.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class Header extends StatelessWidget {
  final String text;
  final bool underline;
  const Header({Key? key, required this.underline, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text.toUpperCase(),
          style: TextStyles.title,
          textAlign: TextAlign.center,
        ),
        const Gap(
          param: .5,
        ),
        underline
            ? Assets.lib.src.assets.svg.divider.svg()
            : const Gap(
                param: 0,
              ),
      ],
    );
  }
}
