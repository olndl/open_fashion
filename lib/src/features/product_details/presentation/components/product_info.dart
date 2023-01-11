import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/product_color.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/product_rating.dart';

class ProductInfo extends StatelessWidget {
  final String brand;
  final String title;
  final double totalPrice;
  final String currencyPrice;
  final double rate;
  final int ratingCount;
  final List<Pallete> colors;

  const ProductInfo({
    Key? key,
    required this.brand,
    required this.title,
    required this.totalPrice,
    required this.currencyPrice,
    required this.rate,
    required this.ratingCount,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 2.percentOfHeight,
          horizontal: 4.percentOfWidth,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 65.percentOfWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brand,
                    style: TextStyles.title
                        .copyWith(color: ColorsGuide.titleActive),
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Text(
                    title,
                    maxLines: 2,
                    style: TextStyles.bodyL
                        .copyWith(color: ColorsGuide.titleActive),
                  ),
                  SizedBox(
                    height: 1.percentOfHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        '$totalPrice',
                        style: TextStyles.price.copyWith(
                          color: ColorsGuide.secondary,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 1.percentOfWidth,
                      ),
                      Text(
                        currencyPrice,
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
                    rating: rate,
                    ratingCount: ratingCount,
                    alignment: MainAxisAlignment.start,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 25.percentOfWidth,
              child: ProductColor(
                availableColors: colors,
                selectedColors: const [],
                onClick: (List<Color> _) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
