import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';
import 'package:open_fashion/presentation/widgets/click_style.dart';

import '../../core/localization/l10n/s.dart';

class ExploreMore extends StatelessWidget {
  const ExploreMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ClickStyle(
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
              Assets.lib.assets.svg.forwardArrow.svg(width: 5.percentOfWidth)
            ],
          ),
        ),
      ),
    );
  }
}
