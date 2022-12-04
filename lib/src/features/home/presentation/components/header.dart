import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/app_bar_delegate.dart';
import 'package:open_fashion/src/core/widgets/gap.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        minHeight: 6.percentOfHeight,
        maxHeight: 6.percentOfHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).newArrivalTitle.toUpperCase(),
              style: TextStyles.title,
            ),
            const Gap(
              param: .5,
            ),
            Assets.lib.src.assets.svg.divider.svg()
          ],
        ),
      ),
    );
  }
}
