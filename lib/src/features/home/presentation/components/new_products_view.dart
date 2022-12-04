import 'package:flutter/material.dart';
import 'package:open_fashion/src/features/home/presentation/components/product_grid.dart';

class NewProductsView extends StatelessWidget {
  const NewProductsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: TabBarView(
        children: [
          ProductGrid(
            cnt: 0,
          ),
          ProductGrid(
            cnt: 1,
          ),
          ProductGrid(
            cnt: 2,
          ),
          ProductGrid(
            cnt: 3,
          ),
        ],
      ),
    );
  }
}
