import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';
import 'package:open_fashion/presentation/widgets/base_app_bar.dart';
import 'package:open_fashion/presentation/widgets/brand_banner.dart';
import 'package:open_fashion/presentation/widgets/category_tab.dart';
import 'package:open_fashion/presentation/widgets/copyright_block.dart';
import 'package:open_fashion/presentation/widgets/custom_scaffold.dart';
import 'package:open_fashion/presentation/widgets/explore_more_button.dart';
import 'package:open_fashion/presentation/widgets/footer.dart';
import 'package:open_fashion/presentation/widgets/gap.dart';
import 'package:open_fashion/presentation/widgets/header.dart';
import 'package:open_fashion/presentation/widgets/info.dart';
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
          SliverToBoxAdapter(child: Gap(param: 1.percentOfHeight)),
          SliverToBoxAdapter(
            child: Assets.lib.assets.svg.divider.svg(),
          ),
          const BrandBanner(),
          SliverToBoxAdapter(
            child: Assets.lib.assets.svg.divider.svg(),
          ),
          SliverToBoxAdapter(child: Gap(param: 1.percentOfHeight)),
          const SliverToBoxAdapter(
            child: Info(),
          ),
          const SliverToBoxAdapter(
            child: Footer(),
          ),
          const SliverToBoxAdapter(
            child: CopyrightBlock(),
          )
        ],
      ),
    );
  }
}
