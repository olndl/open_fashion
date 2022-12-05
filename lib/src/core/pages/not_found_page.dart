import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/buttons/home_page_button.dart';
import 'package:open_fashion/src/core/widgets/custom_scaffold.dart';
import 'package:open_fashion/src/features/home/presentation/components/base_app_bar.dart';
import 'package:open_fashion/src/features/home/presentation/components/copyright_block.dart';
import 'package:open_fashion/src/features/home/presentation/components/footer.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
          const ErrorContent(),
          const Footer(),
          const CopyrightBlock()
        ],
      ),
    );
  }
}

class ErrorContent extends StatelessWidget {
  const ErrorContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(1.percentOfHeight),
        height: 47.percentOfHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              S.of(context).notFoundTitle.toUpperCase(),
              style: TextStyles.title,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 3.percentOfHeight,
            ),
            Assets.lib.src.assets.svg.tailorsDummy
                .svg(width: 30.percentOfWidth),
            Text(
              S.of(context).notFoundText,
              style: TextStyles.bodyL,
              textAlign: TextAlign.center,
            ),
            HomePageButton(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
