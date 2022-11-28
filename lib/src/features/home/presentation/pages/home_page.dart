import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/core/widgets/gap.dart';
import 'package:open_fashion/src/features/home/presentation/components/base_app_bar.dart';
import 'package:open_fashion/src/features/home/presentation/components/brand_banner.dart';
import 'package:open_fashion/src/features/home/presentation/components/category_tab.dart';
import 'package:open_fashion/src/features/home/presentation/components/copyright_block.dart';
import 'package:open_fashion/src/features/home/presentation/components/explore_more_button.dart';
import 'package:open_fashion/src/features/home/presentation/components/footer.dart';
import 'package:open_fashion/src/features/home/presentation/components/header.dart';
import 'package:open_fashion/src/features/home/presentation/components/info.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

import '../components/product_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
          // const SliverToBoxAdapter(
          //   child: OnboardingBanner(),
          // ),
          const Header(),
          const SliverToBoxAdapter(child: CategoryTab()),
          const ProductGrid(),
          const ExploreMore(),
          SliverToBoxAdapter(child: Gap(param: 1.percentOfHeight)),
          SliverToBoxAdapter(
            child: Assets.lib.src.assets.svg.divider.svg(),
          ),
          const BrandBanner(),
          SliverToBoxAdapter(
            child: Assets.lib.src.assets.svg.divider.svg(),
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
