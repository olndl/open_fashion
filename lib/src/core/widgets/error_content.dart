import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/buttons/home_page_button.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

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
