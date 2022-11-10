import 'package:flutter/cupertino.dart';
import 'package:open_fashion/core/localization/l10n/s.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class CopyrightBlock extends StatelessWidget {
  const CopyrightBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsGuide.copyright,
      width: 100.percentOfWidth,
      height: 6.percentOfHeight,
      padding: EdgeInsets.symmetric(vertical: 3.percentOfWidth),
      child: Text(
        S.of(context).copyright,
        style: TextStyles.bodyS.copyWith(color: ColorsGuide.label),
        textAlign: TextAlign.center,
      ),
    );
  }
}
