import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/click_style.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class ExploreMore extends StatelessWidget {
  const ExploreMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClickStyle(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2.percentOfHeight),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).exploreButtonTitle,
              style: TextStyles.bodyL,
            ),
            SizedBox(
              width: 1.percentOfWidth,
            ),
            Assets.lib.src.assets.svg.forwardArrow.svg(width: 5.percentOfWidth)
          ],
        ),
      ),
    );
  }
}
