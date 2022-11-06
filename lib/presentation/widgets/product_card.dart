import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/domain/entities/product.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48.percentOfHeight,
          child: Card(
            color: ColorsGuide.inputBackground,
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {},
              splashColor:
                  Theme.of(context).colorScheme.onSurface.withOpacity(.12),
              highlightColor: Colors.transparent,
              child: ProductContent(
                product: product,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ProductContent extends StatelessWidget {
  final Product product;
  const ProductContent({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 33.percentOfHeight,
          width: double.infinity,
          margin: EdgeInsets.all(1.percentOfWidth),
          padding: EdgeInsets.all(2.percentOfWidth),
          color: Colors.white,
          child: Image.network(
            product.image!,
            fit: BoxFit.contain,
          ),
        ),
        DefaultTextStyle(
          softWrap: false,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.bodyS.copyWith(color: Colors.black),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 1.percentOfWidth,
              vertical: 1.percentOfHeight,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.title,
                  maxLines: 2,
                ),
                SizedBox(
                  height: 2.5.percentOfHeight,
                ),
                Text(
                  '\$${product.price}',
                  style: TextStyles.price.copyWith(color: ColorsGuide.primary),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
