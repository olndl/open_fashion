import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';

class AboutAndMaterialsBlock extends StatelessWidget {
  final String material;
  final String description;
  const AboutAndMaterialsBlock({
    Key? key,
    required this.material,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 2.percentOfHeight,
          horizontal: 4.percentOfWidth,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyles.title.copyWith(
                color: ColorsGuide.titleActive,
              ),
            ),
            SizedBox(
              height: 1.percentOfHeight,
            ),
            Text(
              description,
              style: TextStyles.bodyM.copyWith(
                color: ColorsGuide.placeholder,
              ),
            ),
            SizedBox(
              height: 3.percentOfHeight,
            ),
            Text(
              'Materials',
              style: TextStyles.title.copyWith(
                color: ColorsGuide.titleActive,
              ),
            ),
            SizedBox(
              height: 1.percentOfHeight,
            ),
            Text(
              material,
              style: TextStyles.bodyM.copyWith(
                color: ColorsGuide.placeholder,
              ),
            )
          ],
        ),
      ),
    );
  }
}
