import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class Gap extends StatelessWidget {
  final double param;
  const Gap({Key? key, required this.param}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.percentOfWidth,
      height: param.percentOfHeight,
    );
  }
}
