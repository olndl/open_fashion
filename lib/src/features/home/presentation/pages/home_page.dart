import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/core/widgets/gap.dart';
import 'package:open_fashion/src/features/home/presentation/components/base_app_bar.dart';
import 'package:open_fashion/src/features/home/presentation/components/brand_banner.dart';
import 'package:open_fashion/src/features/home/presentation/components/category_tab.dart';
import 'package:open_fashion/src/features/home/presentation/components/copyright_block.dart';
import 'package:open_fashion/src/features/home/presentation/components/custom_divider.dart';
import 'package:open_fashion/src/features/home/presentation/components/explore_more_button.dart';
import 'package:open_fashion/src/features/home/presentation/components/footer.dart';
import 'package:open_fashion/src/features/home/presentation/components/header.dart';
import 'package:open_fashion/src/features/home/presentation/components/info.dart';
import 'package:open_fashion/src/features/home/presentation/components/new_products_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: DefaultTabController(
        length: 5,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
            const Header(),
            const CategoryTab(),
            const NewProductsView(),
            const ExploreMore(),
            SliverToBoxAdapter(child: Gap(param: 1.percentOfHeight)),
            const CustomDivider(),
            const BrandBanner(),
            const CustomDivider(),
            SliverToBoxAdapter(child: Gap(param: 1.percentOfHeight)),
            const Info(),
            const Footer(),
            const CopyrightBlock()
          ],
        ),
      ),
    );
  }
}
