import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/click_style.dart';
import 'package:open_fashion/src/features/home/domain/models/category_item.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class CategoryFilter extends StatefulWidget {
  CategoryFilter({
    super.key,
    required this.items,
    required this.value,
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
        const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
    this.itemMargin = const EdgeInsets.symmetric(horizontal: 4),
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    required this.selectedItemTextLightThemeColor,
    required this.unselectedItemTextLightThemeColor,
  });

  final List<CategoryItem> items;
  CategoryItem value;
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
  @override
  void initState() {
    super.initState();
    //widget.items.reversed;

    widget.value = widget.items[widget.defaultSelected];
    widget.items[widget.defaultSelected].isSelected = true;
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
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return ClickStyle(
                    indent: 4,
                    onTap: () async {
                      setState(() {
                        widget.items[0].isSelected = false;
                        widget.value.isSelected = false;
                        widget.items[index].isSelected =
                            !widget.items[index].isSelected;
                        widget.value = widget.items[index];
                      });
                      widget.onValueChanged(widget.value);
                    },
                    child: Container(
                      //margin: widget.itemMargin,
                      padding: widget.itemPadding,
                      child: widget.items[index].isSelected
                          ? Column(
                              children: [
                                Text(
                                  widget.items[index].label.toUpperCase(),
                                  style: TextStyles.subTitle14.copyWith(
                                    color:
                                        widget.selectedItemTextLightThemeColor,
                                  ),
                                ),
                                const Spacer(),
                                Assets.lib.src.assets.svg.rectangleCat
                                    .svg(width: 10)
                              ],
                            )
                          : Text(
                              widget.items[index].label.toUpperCase(),
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
