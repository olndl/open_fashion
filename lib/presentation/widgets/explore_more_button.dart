import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/typography.dart';
import 'package:open_fashion/gen/assets.gen.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';

class ExploreMore extends StatelessWidget {
  const ExploreMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: InkWell(
        onTap: () {},
        splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(.12),
        highlightColor: Colors.transparent,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 2.percentOfHeight),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'explore more'.toUpperCase(),
                style: TextStyles.subTitle16,
              ),
              SizedBox(
                width: 1.percentOfWidth,
              ),
              Assets.lib.assets.svg.forwardArrow.svg()
            ],
          ),
        ),
      ),
    );
  }
}
