import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class BrandBanner extends StatelessWidget {
  const BrandBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 5.percentOfWidth),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 40,
          childAspectRatio: 100.percentOfWidth / 100.percentOfHeight,
          mainAxisExtent: 10.percentOfHeight,
        ),
        delegate: SliverChildListDelegate([
          Assets.lib.src.assets.svg.prada.svg(),
          Assets.lib.src.assets.svg.burberry.svg(),
          Assets.lib.src.assets.svg.boss.svg(),
          Assets.lib.src.assets.svg.cartier.svg(),
          Assets.lib.src.assets.svg.gucci.svg(),
          Assets.lib.src.assets.svg.tiffanyCo.svg(),
        ]),
      ),
    );
  }
}
