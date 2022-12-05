import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class HomePageButton extends StatelessWidget {
  final VoidCallback? onTap;
  const HomePageButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 45.percentOfWidth,
        height: 5.percentOfHeight,
        color: ColorsGuide.titleActive,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 7.percentOfWidth,
            vertical: .5.percentOfHeight,
          ),
          child: Row(
            children: [
              Assets.lib.src.assets.svg.backwardArrow
                  .svg(color: ColorsGuide.offWhite),
              const Spacer(),
              Text(
                S.of(context).homePageButton.toUpperCase(),
                style: TextStyles.bodyL.copyWith(color: ColorsGuide.offWhite),
              )
            ],
          ),
        ),
      ),
    );
  }
}
