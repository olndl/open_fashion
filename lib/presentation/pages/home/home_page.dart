import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/presentation/widgets/base_app_bar.dart';
import 'package:open_fashion/presentation/widgets/category_tab.dart';
import 'package:open_fashion/presentation/widgets/custom_scaffold.dart';
import 'package:open_fashion/presentation/widgets/explore_more_button.dart';
import 'package:open_fashion/presentation/widgets/header.dart';
import 'package:open_fashion/presentation/widgets/product_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
          const Header(),
          const SliverToBoxAdapter(child: CategoryTab()),
          const ProductGrid(),
          const ExploreMore(),
          const SliverPadding(padding: EdgeInsets.all(32))
        ],
      ),
    );
  }
}
