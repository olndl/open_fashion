import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';

class ProductImage extends StatelessWidget {
  final String image;
  const ProductImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 2.percentOfHeight,
          horizontal: 4.percentOfWidth,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 2.percentOfHeight,
          horizontal: 4.percentOfWidth,
        ),
        color: ColorsGuide.offWhite,
        child: Center(
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
