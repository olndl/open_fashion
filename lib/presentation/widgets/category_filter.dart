import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';
import 'package:open_fashion/presentation/widgets/click_style.dart';

class CategoryItem {
  final dynamic value;
  final String label;

  CategoryItem({this.value, required this.label});

  bool isSelected = false;
}

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({
    super.key,
    required this.items,
    this.defaultSelected = 0,
    required this.onValueChanged,
    required this.backgroundColor,
    required this.selectedItemColor,
    this.unselectedItemColor = Colors.transparent,
    this.selectedItemBorderColor = Colors.transparent,
    required this.unselectedItemBorderColor,
    required this.itemBorderRadius,
    this.itemHeight = 32.0,
    this.categoryPickerMargin = const EdgeInsets.symmetric(vertical: 18),
    this.categoryPickerPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    this.itemMargin = const EdgeInsets.symmetric(horizontal: 4),
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    required this.selectedItemTextLightThemeColor,
    required this.unselectedItemTextLightThemeColor,
  });

  final List<CategoryItem> items;
  final int defaultSelected;
  final Function(CategoryItem value) onValueChanged;
  final Color backgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color selectedItemBorderColor;
  final Color unselectedItemBorderColor;
  final Color selectedItemTextLightThemeColor;
  final Color unselectedItemTextLightThemeColor;
  final BorderRadius itemBorderRadius;
  final double itemHeight;
  final EdgeInsets categoryPickerPadding;
  final EdgeInsets categoryPickerMargin;
  final EdgeInsets itemPadding;
  final EdgeInsets itemMargin;

  @override
  CategoryFilterState createState() => CategoryFilterState();
}

class CategoryFilterState extends State<CategoryFilter> {
  List<CategoryItem> items = <CategoryItem>[CategoryItem(label: 'all')];
  late CategoryItem value;

  @override
  void initState() {
    super.initState();
    items.addAll(widget.items.reversed.toList());

    value = items[widget.defaultSelected];
    items[widget.defaultSelected].isSelected = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.categoryPickerPadding,
      color: widget.backgroundColor,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: widget.itemHeight,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ClickStyle(
                    onTap: () async {
                      setState(() {
                        items[0].isSelected = false;
                        value.isSelected = false;
                        items[index].isSelected = !items[index].isSelected;
                        value = items[index];
                      });
                      widget.onValueChanged(value);
                    },
                    child: Container(
                      margin: widget.itemMargin,
                      padding: widget.itemPadding,
                      child: items[index].isSelected
                          ? Column(
                              children: [
                                Text(
                                  items[index].label.toUpperCase(),
                                  style: TextStyles.subTitle14.copyWith(
                                    color:
                                        widget.selectedItemTextLightThemeColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 1.percentOfHeight,
                                ),
                                Assets.lib.assets.svg.rectangleCat.svg()
                              ],
                            )
                          : Text(
                              items[index].label.toUpperCase(),
                              style: TextStyles.subTitle14.copyWith(
                                color: widget.unselectedItemTextLightThemeColor,
                              ),
                            ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
