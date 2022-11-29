import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/features/home/presentation/components/tab_indicator.dart';

import '../../../../core/theme/colors_guide.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/app_bar_delegate.dart';
import '../../domain/models/category_item.dart';

class Tabs extends StatelessWidget {
  final List<CategoryItem> allCategories;
  final TabController tabController;
  const Tabs(
      {Key? key, required this.allCategories, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        minHeight: 10.percentOfHeight,
        maxHeight: 10.percentOfHeight,
        child: Container(
          color: ColorsGuide.inputBackground,
          child: TabBar(
            indicator:
                CustomTabIndicator(color: ColorsGuide.secondary, radius: 4),
            controller: tabController,
            labelColor: ColorsGuide.titleActive,
            unselectedLabelColor: ColorsGuide.placeholder,
            isScrollable: true,
            indicatorPadding: EdgeInsets.all(15),
            tabs: List.generate(
              allCategories.length,
              (index) => Tab(
                child: Text(
                  allCategories[index].label.toUpperCase(),
                  style: TextStyles.subTitle14.copyWith(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
