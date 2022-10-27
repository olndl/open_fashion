import 'package:flutter/cupertino.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class Gap extends StatelessWidget {
  const Gap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2.percentOfHeight,
    );
  }
}
