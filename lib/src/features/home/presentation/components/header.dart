import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/gap.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.percentOfWidth,
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
    );
  }
}
