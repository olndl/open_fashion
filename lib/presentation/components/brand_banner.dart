import 'package:flutter/cupertino.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

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
          Assets.lib.assets.svg.prada.svg(),
          Assets.lib.assets.svg.burberry.svg(),
          Assets.lib.assets.svg.boss.svg(),
          Assets.lib.assets.svg.catier.svg(),
          Assets.lib.assets.svg.gucci.svg(),
          Assets.lib.assets.svg.tiffanyCo.svg(),
        ]),
      ),
    );
  }
}
