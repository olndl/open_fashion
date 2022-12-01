import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Assets.lib.src.assets.svg.divider.svg(),
    );
  }
}
