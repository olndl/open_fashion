import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/features/home/presentation/components/product_grid.dart';

class NewProductsView extends StatelessWidget {
  final TabController tabController;
  const NewProductsView({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: TabBarView(
        controller: tabController,
        children: const [
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
          ProductGrid(
            cnt: 4,
          ),
        ],
      ),
    );
  }
}
