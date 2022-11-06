import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/presentation/providers/category_list_provider.dart';
import 'package:open_fashion/presentation/widgets/category_filter.dart';

class CategoryTab extends ConsumerWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(categoryListViewModelStateNotifierProvider).maybeWhen(
          success: (content) => CategoryFilter(
            items: List.generate(
              content.length,
              (index) => CategoryItem(
                label: content[index],
              ),
            ),
            defaultSelected: 0,
            onValueChanged: (value) {
              print(value.label);
            },
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.transparent,
            unselectedItemColor: Colors.transparent,
            selectedItemBorderColor: Colors.transparent,
            unselectedItemBorderColor: Colors.grey,
            selectedItemTextLightThemeColor: ColorsGuide.titleActive,
            unselectedItemTextLightThemeColor: ColorsGuide.placeholder,
            itemBorderRadius: BorderRadius.circular(30),
            itemHeight: 32.0,
            categoryPickerMargin: const EdgeInsets.symmetric(vertical: 11),
            categoryPickerPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemMargin: const EdgeInsets.symmetric(horizontal: 4),
            itemPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
          error: (e) => Center(),
          orElse: () => const Center(
            heightFactor: 15,
            child: CircularProgressIndicator(),
          ),
        );
  }
}
