import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/presentation/components/base_app_bar.dart';
import 'package:open_fashion/src/features/home/presentation/components/copyright_block.dart';
import 'package:open_fashion/src/features/home/presentation/components/footer.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/about_and_materials_block.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/add_to_cart_button.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/care_block.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/product_image.dart';
import 'package:open_fashion/src/features/product_details/presentation/components/product_info.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;
  const ProductDetailsPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
          ProductImage(image: product.image),
          ProductInfo(
            brand: product.brand,
            title: product.title,
            totalPrice: product.price.total,
            currencyPrice: product.price.currency,
            rate: product.rating.rate,
            ratingCount: product.rating.count,
            colors: product.pallete,
          ),
          const AddToCartButton(),
          AboutAndMaterialsBlock(
            material: product.material,
            description: product.description,
          ),
          CareBlock(
            care: product.care,
          ),
          const Footer(),
          const CopyrightBlock()
        ],
      ),
    );
  }
}
