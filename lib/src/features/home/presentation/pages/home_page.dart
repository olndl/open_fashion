import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/core/widgets/gap.dart';
import 'package:open_fashion/src/features/home/presentation/components/base_app_bar.dart';
import 'package:open_fashion/src/features/home/presentation/components/brand_banner.dart';
import 'package:open_fashion/src/features/home/presentation/components/copyright_block.dart';
import 'package:open_fashion/src/features/home/presentation/components/custom_divider.dart';
import 'package:open_fashion/src/features/home/presentation/components/footer.dart';
import 'package:open_fashion/src/features/home/presentation/components/info.dart';
import 'package:open_fashion/src/features/home/presentation/components/new_products.dart';
import 'package:open_fashion/src/features/home/presentation/components/sub_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
          const NewProducts(),
          SliverToBoxAdapter(child: Gap(param: .2.percentOfHeight)),
          const CustomDivider(),
          const BrandBanner(),
          const CustomDivider(),
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     onPressed: () => throw Exception(),
          //     child: const Text('Throw Test Exception'),
          //   ),
          // ),
          SliverToBoxAdapter(child: Gap(param: .5.percentOfHeight)),
          const Info(),
          SliverToBoxAdapter(child: Gap(param: .3.percentOfHeight)),
          SliverToBoxAdapter(
            child: SubHeader(text: S.of(context).followUs),
          ),
          const Footer(),
          const CopyrightBlock()
        ],
      ),
    );
  }
}
