import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/click_style.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/presentation/components/new_label.dart';
import 'package:open_fashion/src/features/product_details/presentation/pages/product_details_page.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.percentOfHeight,
          child: Card(
            color: ColorsGuide.inputBackground,
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: ClickStyle(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(product: product),
                  ),
                );
              },
              child: ProductContent(
                product: product,
              ),
            ),
          ),
        ),
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
      children: [
        Container(
          height: 40.percentOfHeight,
          width: double.infinity,
          margin: EdgeInsets.all(1.percentOfWidth),
          padding: EdgeInsets.all(2.percentOfWidth),
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Image.network(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
              product.newArrival
                  ? const Positioned(child: NewLabel())
                  : const Nothing(),
            ],
          ),
        ),
        DefaultTextStyle(
          softWrap: false,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.bodyS.copyWith(color: Colors.black),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 1.percentOfWidth,
              //vertical: 1.percentOfHeight,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.title,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 2.6.percentOfHeight,
                ),
                Text(
                  '\$${product.price.total}',
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
