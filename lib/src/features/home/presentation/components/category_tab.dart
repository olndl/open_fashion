import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/components/category_filter.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoriesCubit>(context).getCategories();
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoading) {
          return Container(
            padding: const EdgeInsets.all(25),
            child: const Center(
              child: CircularProgressIndicator(color: Colors.black),
            ),
          );
        } else if (state is CategoriesLoaded) {
          return CategoryFilter(
            items: List.generate(
              state.allCategories.length,
              (index) => state.allCategories[index],
            ),
            value: state.currantCategory,
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
        } else if (state is CategoriesError) {
          return Container(
            padding: const EdgeInsets.all(25),
            child: Center(child: Text(state.msg)),
          );
        }
        return const Nothing();
      },
    );
  }
}
