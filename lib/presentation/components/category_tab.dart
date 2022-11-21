import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/presentation/bloc/all_categories/all_categories_cubit.dart';
import 'package:open_fashion/presentation/components/category_filter.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCategoriesCubit, AllCategoriesState>(
      builder: (context, state) {
        if (state is! AllCategoriesLoaded) {
          return const Center(child: CircularProgressIndicator());
        }
        final allCategories = state.allCategories;
        return CategoryFilter(
          items: List.generate(
            allCategories.length,
            (index) => CategoryItem(
              label: allCategories[index],
            ),
          ),
          defaultSelected: 0,
          onValueChanged: (value) {},
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.transparent,
          unselectedItemColor: Colors.transparent,
          selectedItemBorderColor: Colors.transparent,
          unselectedItemBorderColor: Colors.grey,
          selectedItemTextLightThemeColor: ColorsGuide.titleActive,
          unselectedItemTextLightThemeColor: ColorsGuide.placeholder,
          itemBorderRadius: BorderRadius.circular(30),
          itemHeight: 48.0,
          categoryPickerMargin: const EdgeInsets.symmetric(vertical: 11),
          categoryPickerPadding:
              EdgeInsets.symmetric(horizontal: 3.percentOfWidth, vertical: 8),
          itemMargin: const EdgeInsets.symmetric(horizontal: 4),
          itemPadding: const EdgeInsets.symmetric(horizontal: 12),
        );
      },
    );
  }
}
