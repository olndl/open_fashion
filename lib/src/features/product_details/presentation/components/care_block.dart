import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class CareBlock extends StatelessWidget {
  final Care care;
  const CareBlock({Key? key, required this.care}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 2.percentOfHeight,
          horizontal: 4.percentOfWidth,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Care',
              style: TextStyles.title.copyWith(
                color: ColorsGuide.titleActive,
              ),
            ),
            SizedBox(
              height: 1.percentOfHeight,
            ),
            care.bleach
                ? Row(
                    children: [
                      Assets.lib.src.assets.svg.doNotBleach.svg(),
                      SizedBox(
                        width: 2.percentOfWidth,
                      ),
                      Text(
                        'Do not use bleach',
                        style: TextStyles.bodyM
                            .copyWith(color: ColorsGuide.placeholder),
                      )
                    ],
                  )
                : const Nothing(),
            care.trumbleDry
                ? Row(
                    children: [
                      Assets.lib.src.assets.svg.doNotTumbleDry.svg(),
                      SizedBox(
                        width: 2.percentOfWidth,
                      ),
                      Text(
                        'Do not tumble dry',
                        style: TextStyles.bodyM
                            .copyWith(color: ColorsGuide.placeholder),
                      )
                    ],
                  )
                : const Nothing(),
            care.dryClean
                ? Row(
                    children: [
                      Assets.lib.src.assets.svg.doNotWash.svg(),
                      SizedBox(
                        width: 2.percentOfWidth,
                      ),
                      Text(
                        'Dry clean with tetrachloroethylene',
                        style: TextStyles.bodyM
                            .copyWith(color: ColorsGuide.placeholder),
                      )
                    ],
                  )
                : const Nothing(),
            care.useIron
                ? Row(
                    children: [
                      Assets.lib.src.assets.svg.ironLowTemperature.svg(),
                      SizedBox(
                        width: 2.percentOfWidth,
                      ),
                      Text(
                        'Iron at a maximum of 110ºC/230ºF',
                        style: TextStyles.bodyM
                            .copyWith(color: ColorsGuide.placeholder),
                      )
                    ],
                  )
                : const Nothing(),
          ],
        ),
      ),
    );
  }
}
