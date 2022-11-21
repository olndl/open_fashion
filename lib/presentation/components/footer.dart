import 'package:flutter/cupertino.dart';
import 'package:open_fashion/core/localization/l10n/s.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';
import 'package:open_fashion/presentation/widgets/click_style.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Assets.lib.assets.svg.twitter
                      .svg(width: 8.percentOfWidth),
                ),
                const Spacer(),
                ClickStyle(
                  indent: 5,
                  child: Assets.lib.assets.svg.instagram
                      .svg(width: 8.percentOfWidth),
                ),
                const Spacer(),
                ClickStyle(
                  indent: 5,
                  child: Assets.lib.assets.svg.youTube
                      .svg(width: 8.percentOfWidth),
                ),
              ],
            ),
          ),
          Assets.lib.assets.svg.divider.svg(),
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
          Assets.lib.assets.svg.divider.svg(),
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
    );
  }
}
