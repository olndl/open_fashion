import 'package:flutter/material.dart';

class ClickStyle extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;
  final double? indent;
  const ClickStyle({
    Key? key,
    this.onTap,
    required this.child,
    this.indent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(.12),
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        margin: EdgeInsets.all(indent ?? 0),
        child: child,
      ),
    );
  }
}
