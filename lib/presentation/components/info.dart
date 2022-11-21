import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/localization/l10n/s.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsGuide.offWhite,
      width: 100.percentOfWidth,
      height: 70.percentOfHeight,
      padding: EdgeInsets.symmetric(
        horizontal: 3.percentOfWidth,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Assets.lib.assets.svg.logo.svg(),
          Text(
            S.of(context).infoText,
            textAlign: TextAlign.center,
            style: TextStyles.subTitle14.copyWith(
              color: ColorsGuide.label,
            ),
          ),
          Assets.lib.assets.svg.divider.svg(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40.percentOfWidth,
                height: 12.percentOfHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Assets.lib.assets.svg.shipping
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
                    Assets.lib.assets.svg.heart.svg(width: 10.percentOfWidth),
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
          Assets.lib.assets.svg.monogram.svg(),
        ],
      ),
    );
  }
}
