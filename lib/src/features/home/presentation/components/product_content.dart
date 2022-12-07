import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/presentation/components/new_label.dart';

class ProductContent extends StatelessWidget {
  final Product product;
  const ProductContent({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 29.percentOfHeight,
          width: double.infinity,
          margin: EdgeInsets.all(1.percentOfWidth),
          padding: EdgeInsets.all(
            2.percentOfWidth,
          ),
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Image.network(
                  product.image,
                  //fit: BoxFit.cover,
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
              horizontal: .8.percentOfWidth,
              vertical: .8.percentOfHeight,
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
                  height: .5.percentOfHeight,
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
