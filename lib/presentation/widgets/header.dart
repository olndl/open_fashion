import 'package:flutter/cupertino.dart';
import 'package:open_fashion/core/localization/l10n/s.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';
import 'package:open_fashion/presentation/widgets/gap.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.percentOfWidth,
      height: 10.percentOfHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).newArrivalTitle.toUpperCase(),
            style: TextStyles.title,
          ),
          const Gap(),
          Assets.lib.assets.svg.divider.svg()
        ],
      ),
    );
  }
}
