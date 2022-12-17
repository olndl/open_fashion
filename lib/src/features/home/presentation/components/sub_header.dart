import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/theme/typography.dart';

class SubHeader extends StatelessWidget {
  final String text;
  const SubHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyles.title,
      textAlign: TextAlign.center,
    );
  }
}
