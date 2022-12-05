import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/presentation/components/product_card.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;
  const ProductGrid({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(3.percentOfWidth),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 100.percentOfWidth / 100.percentOfHeight,
        mainAxisExtent: 40.percentOfHeight,
      ),
      itemBuilder: (BuildContext context, index) {
        return ProductCard(
          product: products[index],
        );
      },
      itemCount: products.length,
    );
  }
}
