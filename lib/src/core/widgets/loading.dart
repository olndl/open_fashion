import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

//experimental

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double dot1 = 1;
  double dot2 = 1;
  double dot3 = 1;
  int counter = 0;

  Timer timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {});
  bool isStarted = false;

  void changeSize() {
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        while (counter <= 2) {
          if (counter == 0) {
            dot1 = 2;
            dot2 = 1;
            dot3 = 1;
          } else if (counter == 1) {
            dot2 = 2;
          } else if (counter == 2) {
            dot1 = 1;
            dot3 = 2;
          }
          counter++;
          if (counter > 2) {
            counter = 0;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    changeSize();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: dot1),
          duration: const Duration(milliseconds: 500),
          builder: (_, value, child) => Transform.scale(
            scale: value,
            child: child,
          ),
          child: Assets.lib.src.assets.svg.rectangleCat
              .svg(width: 3.percentOfWidth),
        ),
        const SizedBox(
          width: 20,
        ),
        //Spacer(),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: dot2),
          duration: const Duration(milliseconds: 500),
          builder: (_, value, child) => Transform.scale(
            scale: value,
            child: child,
          ),
          child: Assets.lib.src.assets.svg.rectangleCat
              .svg(width: 3.percentOfWidth),
        ),
        //Spacer(),
        const SizedBox(
          width: 20,
        ),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: dot3),
          duration: const Duration(milliseconds: 500),
          builder: (_, value, child) => Transform.scale(
            scale: value,
            child: child,
          ),
          child: Assets.lib.src.assets.svg.rectangleCat
              .svg(width: 3.percentOfWidth),
        )
      ],
    );
  }
}
