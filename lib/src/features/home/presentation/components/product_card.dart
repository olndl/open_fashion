import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/navigation/config/app_router.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/click_style.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/presentation/components/product_content.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 38.percentOfHeight,
          child: Card(
            color: ColorsGuide.inputBackground,
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: ClickStyle(
              onTap: () {
                context.router.push(ProductDetailsRoute(product: product));
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
