import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';

class NewLabel extends StatelessWidget {
  const NewLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5.percentOfWidth,
      height: 5.percentOfWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: ColorsGuide.secondary,
      ),
      child: Center(
        child: Text(
          S.of(context).newLabel,
          style: TextStyles.bodyS.copyWith(
            color: ColorsGuide.inputBackground,
            fontSize: 5,
          ),
        ),
      ),
    );
  }
}
