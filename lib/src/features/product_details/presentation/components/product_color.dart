import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';

class ProductColor extends StatefulWidget {
  final List<Pallete> availableColors;
  final List<Color> selectedColors;
  final Function(List<Color>) onClick;

  const ProductColor({
    Key? key,
    required this.availableColors,
    required this.selectedColors,
    required this.onClick,
  }) : super(key: key);

  @override
  ProductColorState createState() => ProductColorState();
}

class ProductColorState extends State<ProductColor> {
  late List<Color> selectedColors;

  @override
  void initState() {
    selectedColors = widget.selectedColors;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.sidePadding,
            horizontal: AppSizes.sidePadding,
          ),
          color: ColorsGuide.inputBackground,
          child: Wrap(
            spacing: AppSizes.sidePadding,
            children: buildColors(context),
          ),
        )
      ],
    );
  }

  List<Widget> buildColors(BuildContext context) {
    var colorWidgets = <Widget>[];
    for (var i = 0; i < widget.availableColors.length; i++) {
      colorWidgets.add(
        InkWell(
          onTap: (() => {
                updateSelectedColors(
                  widget.availableColors[i].hexColor.toColor(),
                )
              }),
          child: Column(
            children: [
              buildColorWidget(
                widget.availableColors[i].hexColor.toColor(),
                context,
              ),
              const SizedBox(height: 5),
              Text(widget.availableColors[i].colorName)
            ],
          ),
        ),
      );
    }
    return colorWidgets;
  }

  Container buildColorWidget(Color color, BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(22),
        ),
        border: Border.all(color: ColorsGuide.secondary),
      ),
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(18),
          ),
          color: color,
        ),
      ),
    );
  }

  void updateSelectedColors(Color color) {
    if (selectedColors.contains(color)) {
      selectedColors.remove(color);
    } else {
      selectedColors.add(color);
    }
    setState(() {});
    widget.onClick(selectedColors);
  }
}
