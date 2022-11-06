import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/presentation/widgets/category_tab.dart';
import 'package:open_fashion/presentation/widgets/explore_more_button.dart';
import 'package:open_fashion/presentation/widgets/header.dart';
import 'package:open_fashion/presentation/widgets/product_grid.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Header(),
        CategoryTab(),
        ProductGrid(),
        ExploreMore(),
      ],
    );
  }
}
