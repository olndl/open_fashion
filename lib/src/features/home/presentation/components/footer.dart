import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/click_style.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 100.percentOfWidth,
        height: 60.percentOfHeight,
        padding: EdgeInsets.symmetric(
          horizontal: 3.percentOfWidth,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              S.of(context).followUs.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyles.title,
            ),
            SizedBox(
              width: 60.percentOfWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClickStyle(
                    indent: 5,
                    child: Assets.lib.src.assets.svg.twitter
                        .svg(width: 8.percentOfWidth),
                  ),
                  const Spacer(),
                  ClickStyle(
                    indent: 5,
                    child: Assets.lib.src.assets.svg.instagram
                        .svg(width: 8.percentOfWidth),
                  ),
                  const Spacer(),
                  ClickStyle(
                    indent: 5,
                    child: Assets.lib.src.assets.svg.youTube
                        .svg(width: 8.percentOfWidth),
                  ),
                ],
              ),
            ),
            Assets.lib.src.assets.svg.divider.svg(),
            Text(
              S.of(context).openFashionEmail,
              textAlign: TextAlign.center,
              style: TextStyles.bodyL,
            ),
            Text(
              S.of(context).openFashionPhone,
              textAlign: TextAlign.center,
              style: TextStyles.bodyL,
            ),
            Text(
              S.of(context).openFashionMode,
              textAlign: TextAlign.center,
              style: TextStyles.bodyL,
            ),
            Assets.lib.src.assets.svg.divider.svg(),
            SizedBox(
              width: 70.percentOfWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClickStyle(
                    indent: 4,
                    child: Text(
                      S.of(context).about,
                      style: TextStyles.bodyL,
                    ),
                  ),
                  const Spacer(),
                  ClickStyle(
                    indent: 4,
                    child: Text(
                      S.of(context).contact,
                      style: TextStyles.bodyL,
                    ),
                  ),
                  const Spacer(),
                  ClickStyle(
                    indent: 4,
                    child: Text(
                      S.of(context).career,
                      style: TextStyles.bodyL,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
