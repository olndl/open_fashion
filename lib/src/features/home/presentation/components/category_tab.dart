import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/components/tab_indicator.dart';
import 'package:open_fashion/src/features/home/presentation/pages/home_page.dart';

class CategoryTab extends StatelessWidget {
  final TabController tabController;
  const CategoryTab({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoriesCubit>(context).getCategories();
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoading) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: CircularProgressIndicator(color: Colors.black),
              ),
            ),
          );
        } else if (state is CategoriesLoaded) {
          return SliverPersistentHeader(
            delegate: SliverAppBarDelegate(
              minHeight: 10.percentOfHeight,
              maxHeight: 10.percentOfHeight,
              child: Container(
                color: ColorsGuide.inputBackground,
                child: TabBar(
                    indicator: CustomTabIndicator(
                        color: ColorsGuide.secondary, radius: 4),
                    controller: tabController,
                    labelColor: ColorsGuide.titleActive,
                    unselectedLabelColor: ColorsGuide.placeholder,
                    isScrollable: true,
                    indicatorPadding: EdgeInsets.all(15),
                    tabs: List.generate(
                      state.allCategories.length,
                      (index) => Tab(
                        child: Text(
                          state.allCategories[index].label.toUpperCase(),
                          style: TextStyles.subTitle14.copyWith(),
                        ),
                      ),
                    )),
              ),
            ),
          );
        } else if (state is CategoriesError) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(25),
              child: Center(child: Text(state.msg)),
            ),
          );
        }
        return const Nothing();
      },
    );
  }
}
