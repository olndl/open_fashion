import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/features/home/presentation/components/base_app_bar.dart';
import 'package:open_fashion/src/features/home/presentation/components/copyright_block.dart';
import 'package:open_fashion/src/features/home/presentation/components/footer.dart';

import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/click_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../home/domain/models/product.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 2.percentOfHeight,
                horizontal: 4.percentOfWidth,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 2.percentOfHeight,
                horizontal: 4.percentOfWidth,
              ),
              color: Colors.white,
              child: Center(
                child: Image.network(
                  product.image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 2.percentOfHeight,
                horizontal: 4.percentOfWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyles.bodyL
                        .copyWith(color: ColorsGuide.titleActive),
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyles.price
                        .copyWith(color: ColorsGuide.secondary, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
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
                            style: TextStyles.bodyL
                                .copyWith(color: ColorsGuide.offWhite),
                          ),
                        ],
                      ),
                      Assets.lib.src.assets.svg.heart
                          .svg(color: ColorsGuide.offWhite)
                    ]),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 2.percentOfHeight,
                horizontal: 4.percentOfWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyles.title.copyWith(
                      color: ColorsGuide.titleActive,
                    ),
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Text(
                    product.description,
                    style: TextStyles.bodyM.copyWith(
                      color: ColorsGuide.placeholder,
                    ),
                  ),
                  SizedBox(
                    height: 3.percentOfHeight,
                  ),
                  Text(
                    'Materials',
                    style: TextStyles.title.copyWith(
                      color: ColorsGuide.titleActive,
                    ),
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Text(
                    'We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products.',
                    style: TextStyles.bodyM.copyWith(
                      color: ColorsGuide.placeholder,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
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
                  Row(
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
                  ),
                  Row(
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
                  ),
                  Row(
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
                  ),
                  Row(
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
                ],
              ),
            ),
          ),
          const Footer(),
          const CopyrightBlock()
        ],
      ),
    );
  }
}
