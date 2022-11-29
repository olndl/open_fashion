import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/features/home/presentation/components/header.dart';
import 'package:open_fashion/src/features/home/presentation/components/product_grid.dart';

import '../../../../core/theme/colors_guide.dart';
import '../../../../core/widgets/gap.dart';
import '../../../../gen/assets.gen.dart';
import '../components/base_app_bar.dart';
import '../components/brand_banner.dart';
import '../components/category_tab.dart';
import '../components/copyright_block.dart';
import '../components/explore_more_button.dart';
import '../components/footer.dart';
import '../components/info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: DefaultTabController(
        length: 4,
        child: CustomScrollView(
          slivers: <Widget>[
            BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
            SliverPersistentHeader(
              //pinned: true,
              delegate: SliverAppBarDelegate(
                minHeight: 10.percentOfHeight,
                maxHeight: 10.percentOfHeight,
                child: const Header(),
              ),
            ),
            CategoryTab(
              tabController: _tabController,
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ProductGrid(),
                  ProductGrid(),
                  ProductGrid(),
                  ProductGrid(),
                ],
              ),
            ),
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
      ),
    );
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
