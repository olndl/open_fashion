import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/click_style.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/presentation/components/base_app_bar.dart';
import 'package:open_fashion/src/features/home/presentation/components/copyright_block.dart';
import 'package:open_fashion/src/features/home/presentation/components/footer.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/product_rating.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

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
                  product.image,
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
                    product.brand,
                    style: TextStyles.title
                        .copyWith(color: ColorsGuide.titleActive),
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Text(
                    product.title,
                    style: TextStyles.bodyL
                        .copyWith(color: ColorsGuide.titleActive),
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        '${product.price.total}',
                        style: TextStyles.price.copyWith(
                          color: ColorsGuide.secondary,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 1.percentOfWidth,
                      ),
                      Text(
                        product.price.currency,
                        style: TextStyles.price.copyWith(
                          color: ColorsGuide.secondary,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  ProductRating(
                    rating: product.rating.rate,
                    ratingCount: product.rating.count,
                    alignment: MainAxisAlignment.start,
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Color',
                        style: TextStyles.bodyS
                            .copyWith(color: ColorsGuide.titleActive),
                      ),
                      for (int i = 0; i < product.pallete.length; i++)
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: ColorsGuide.barBackground,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Positioned(
                                  left: 2.5,
                                  top: 2.5,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: ColorsGuide.inputBackground,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5,
                                  top: 5,
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color:
                                          product.pallete[i].hexColor.toColor(),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      Text(
                        'Size',
                        style: TextStyles.bodyS
                            .copyWith(color: ColorsGuide.titleActive),
                      ),
                      for (int j = 0; j < product.availableSizes.length; j++)
                        Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: ColorsGuide.barBackground,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                              left: 2.5,
                              top: 2.5,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: ColorsGuide.inputBackground,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 5,
                              top: 5,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    product.availableSizes[j].toUpperCase(),
                                    style:
                                        TextStyles.bodyS.copyWith(fontSize: 10),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                    ],
                  )
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
                  ],
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
                    product.material,
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
