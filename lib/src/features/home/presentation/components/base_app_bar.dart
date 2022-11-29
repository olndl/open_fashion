import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

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
        icon: Assets.lib.src.assets.svg.menu.svg(),
        onPressed: () {},
      ),
      title: Assets.lib.src.assets.svg.logo.svg(height: 3.5.percentOfHeight),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Assets.lib.src.assets.svg.search.svg(),
          onPressed: () {},
        ),
        IconButton(
          icon: Assets.lib.src.assets.svg.shoppingBag.svg(),
          onPressed: () {},
        ),
      ],
      flexibleSpace: const FlexibleSpaceBar(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
