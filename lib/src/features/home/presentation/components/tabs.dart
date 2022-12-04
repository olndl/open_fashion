import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/app_bar_delegate.dart';
import 'package:open_fashion/src/features/home/domain/models/main_category.dart';
import 'package:open_fashion/src/features/home/presentation/components/tab_indicator.dart';

class Tabs extends StatelessWidget {
  final List<MainCategory> allCategories;
  const Tabs({
    Key? key,
    required this.allCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        minHeight: 7.percentOfHeight,
        maxHeight: 7.percentOfHeight,
        child: Container(
          color: ColorsGuide.inputBackground,
          child: TabBar(
            indicator:
                CustomTabIndicator(color: ColorsGuide.secondary, radius: 4),
            labelColor: ColorsGuide.titleActive,
            unselectedLabelColor: ColorsGuide.placeholder,
            isScrollable: true,
            indicatorPadding: EdgeInsets.all(1.percentOfWidth),
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
