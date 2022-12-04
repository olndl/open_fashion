import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: ColorsGuide.offWhite,
        width: 100.percentOfWidth,
        height: 40.percentOfHeight,
        padding: EdgeInsets.symmetric(
          horizontal: 3.percentOfWidth,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Assets.lib.src.assets.svg.logo.svg(),
            Text(
              S.of(context).infoText,
              textAlign: TextAlign.center,
              style: TextStyles.subTitle14.copyWith(
                color: ColorsGuide.label,
              ),
            ),
            Assets.lib.src.assets.svg.divider.svg(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40.percentOfWidth,
                  height: 12.percentOfHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Assets.lib.src.assets.svg.shipping
                          .svg(width: 10.percentOfWidth),
                      Text(
                        S.of(context).shipLabel,
                        textAlign: TextAlign.center,
                        style:
                            TextStyles.bodyS.copyWith(color: ColorsGuide.label),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 40.percentOfWidth,
                  height: 12.percentOfHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Assets.lib.src.assets.svg.heart
                          .svg(width: 10.percentOfWidth),
                      Text(
                        S.of(context).materialsLabel,
                        textAlign: TextAlign.center,
                        style: TextStyles.bodyS.copyWith(
                          color: ColorsGuide.label,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Assets.lib.src.assets.svg.monogram.svg(),
          ],
        ),
      ),
    );
  }
}
