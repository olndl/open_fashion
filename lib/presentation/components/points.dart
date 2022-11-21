import 'package:flutter/cupertino.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class Points extends StatelessWidget {
  final int count;
  const Points({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (count) {
      case 0:
        return Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Assets.lib.assets.svg.rectangleFill.svg(width: 4.percentOfWidth),
            Assets.lib.assets.svg.rectangleEmpty.svg(width: 4.percentOfWidth),
            Assets.lib.assets.svg.rectangleEmpty.svg(width: 4.percentOfWidth)
          ],
        );
      case 1:
        return Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Assets.lib.assets.svg.rectangleEmpty.svg(width: 4.percentOfWidth),
            Assets.lib.assets.svg.rectangleFill.svg(width: 4.percentOfWidth),
            Assets.lib.assets.svg.rectangleEmpty.svg(width: 4.percentOfWidth)
          ],
        );
      case 2:
        return Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Assets.lib.assets.svg.rectangleEmpty.svg(width: 4.percentOfWidth),
            Assets.lib.assets.svg.rectangleEmpty.svg(width: 4.percentOfWidth),
            Assets.lib.assets.svg.rectangleFill.svg(width: 4.percentOfWidth)
          ],
        );
      default:
        return Container();
    }
  }
}
