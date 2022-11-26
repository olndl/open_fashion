import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

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
            Assets.lib.src.assets.svg.rectangleFill
                .svg(width: 4.percentOfWidth),
            Assets.lib.src.assets.svg.rectangleEmpty
                .svg(width: 4.percentOfWidth),
            Assets.lib.src.assets.svg.rectangleEmpty
                .svg(width: 4.percentOfWidth)
          ],
        );
      case 1:
        return Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Assets.lib.src.assets.svg.rectangleEmpty
                .svg(width: 4.percentOfWidth),
            Assets.lib.src.assets.svg.rectangleFill
                .svg(width: 4.percentOfWidth),
            Assets.lib.src.assets.svg.rectangleEmpty
                .svg(width: 4.percentOfWidth)
          ],
        );
      case 2:
        return Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Assets.lib.src.assets.svg.rectangleEmpty
                .svg(width: 4.percentOfWidth),
            Assets.lib.src.assets.svg.rectangleEmpty
                .svg(width: 4.percentOfWidth),
            Assets.lib.src.assets.svg.rectangleFill.svg(width: 4.percentOfWidth)
          ],
        );
      default:
        return Container();
    }
  }
}
