import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/app_bar_delegate.dart';
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
import 'package:open_fashion/src/features/home/presentation/components/new_products_view.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

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
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: DefaultTabController(
        length: 5,
        child: CustomScrollView(
          shrinkWrap: true,
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
            NewProductsView(tabController: _tabController),
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
