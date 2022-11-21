import 'package:flutter/material.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;

  const BaseAppBar({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      backgroundColor: backgroundColor,
      elevation: 5,
      leading: IconButton(
        icon: Assets.lib.assets.svg.menu.svg(),
        onPressed: () {},
      ),
      title: Assets.lib.assets.svg.logo.svg(height: 3.5.percentOfHeight),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Assets.lib.assets.svg.search.svg(),
          onPressed: () {},
        ),
        IconButton(
          icon: Assets.lib.assets.svg.shoppingBag.svg(),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
