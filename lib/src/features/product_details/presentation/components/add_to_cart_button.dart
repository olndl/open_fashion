import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/click_style.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ClickStyle(
        child: Container(
          color: ColorsGuide.titleActive,
          padding: EdgeInsets.symmetric(
            vertical: 2.percentOfHeight,
            horizontal: 4.percentOfWidth,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Assets.lib.src.assets.svg.plus
                      .svg(color: ColorsGuide.offWhite),
                  SizedBox(
                    width: 2.percentOfWidth,
                  ),
                  Text(
                    'add to basket'.toUpperCase(),
                    style:
                        TextStyles.bodyL.copyWith(color: ColorsGuide.offWhite),
                  ),
                ],
              ),
              Assets.lib.src.assets.svg.heart.svg(color: ColorsGuide.offWhite)
            ],
          ),
        ),
      ),
    );
  }
}
