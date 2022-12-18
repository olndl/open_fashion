import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';

class ProductRating extends StatelessWidget {
  final double rating;
  final int ratingCount;
  final int starCount;
  final MainAxisAlignment alignment;
  final double iconSize;
  final double spacing;
  final bool rtl;
  final bool showLabel;
  final double labelFontSize;
  final bool editable;
  final bool showDefaultStar;
  final Function(double rating)? onRatingSelected;

  const ProductRating({
    Key? key,
    required this.rating,
    required this.ratingCount,
    this.alignment = MainAxisAlignment.center,
    this.starCount = 5,
    this.iconSize = 24.0,
    this.spacing = 2.0,
    this.onRatingSelected,
    this.rtl = false,
    this.showLabel = true,
    this.labelFontSize = 14.0,
    this.editable = false,
    this.showDefaultStar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: alignment,
      children: <Widget>[
        _buildStars(context, rating),
        _buildRatingLabel(context),
      ],
    );
  }

  Widget _buildStars(BuildContext context, double rating) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: spacing,
      children: List.generate(starCount, (index) => _buildStar(index)),
    );
  }

  Widget _buildStar(int index) {
    return GestureDetector(
      onTap: editable
          ? () {
              onRatingSelected!(_calculateRatingSelected(index));
            }
          : null,
      child: SizedBox(
        width: iconSize + 2.0,
        height: iconSize + 2.0,
        child: Center(
          child: _buildStarIcon(index),
        ),
      ),
    );
  }

  Widget _buildStarIcon(int index) {
    var isSelected = _isStarSelected(index);

    if (isSelected || showDefaultStar) {
      return isSelected
          ? Assets.lib.src.assets.svg.rectangleCat
              .svg(width: iconSize, height: iconSize)
          : Assets.lib.src.assets.svg.rectangleEmpty.svg(
              width: iconSize,
              height: iconSize,
              color: ColorsGuide.placeholder,
            );
    }

    return SizedBox(
      width: iconSize,
      height: iconSize,
    );
  }

  double _calculateRatingSelected(int index) {
    if (!rtl) {
      return index + 1.0;
    }

    return starCount - (index + 1.0);
  }

  bool _isStarSelected(int index) {
    if (!rtl) {
      return rating > index;
    }

    return rating > (starCount - (index + 1));
  }

  Widget _buildRatingLabel(BuildContext context) {
    return showLabel && ratingCount > 0 ? _buildLabel(context) : Container();
  }

  Widget _buildLabel(BuildContext context) {
    return SizedBox(
      height: iconSize,
      child: Center(
        child: Text(
          ' (${ratingCount.toInt()})',
          style: TextStyles.bodyS.copyWith(fontSize: labelFontSize),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
