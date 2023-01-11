import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class NextPageAppBar extends StatelessWidget {
  final Color backgroundColor;
  const NextPageAppBar({Key? key, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      backgroundColor: backgroundColor,
      elevation: 5,
      leading: IconButton(
        icon: Assets.lib.src.assets.svg.backwardArrow.svg(),
        onPressed: () {
          context.router.pop();
        },
      ),
      title: Assets.lib.src.assets.svg.logo.svg(height: 3.5.percentOfHeight),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Assets.lib.src.assets.svg.shoppingBag.svg(),
          onPressed: () {},
        ),
        IconButton(
          icon: Assets.lib.src.assets.svg.menu.svg(),
          onPressed: () {},
        ),
      ],
      flexibleSpace: const FlexibleSpaceBar(),
    );
  }

  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
