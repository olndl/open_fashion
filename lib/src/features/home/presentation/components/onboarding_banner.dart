import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/features/home/presentation/components/button_in.dart';
import 'package:open_fashion/src/features/home/presentation/components/points.dart';
import 'package:open_fashion/src/gen/assets.gen.dart';
import 'package:open_fashion/src/gen/fonts.gen.dart';

class OnboardingBanner extends StatelessWidget {
  const OnboardingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    List<Banner> pages = [
      Banner(Assets.lib.src.assets.png.imageMain3.path),
      Banner(Assets.lib.src.assets.png.imageMain2.path),
      Banner(Assets.lib.src.assets.png.imageMain1.path)
    ];
    return SizedBox(
      height: 60.percentOfHeight,
      child: PageView.builder(
        //controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: pages.length,
        onPageChanged: (currentIndex) {},
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Image.asset(
                pages[index].image,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 25.percentOfHeight,
                left: 15.percentOfWidth,
                child: Text(
                  S.of(context).bannerTitleFirst.toUpperCase(),
                  style: TextStyle(
                    color: ColorsGuide.placeholder,
                    fontSize: 42.0,
                    fontFamily: FontFamily.bodoniModaBoldItalic,
                  ),
                ),
              ),
              Positioned(
                top: 30.percentOfHeight,
                left: 20.percentOfWidth,
                child: Text(
                  S.of(context).bannerTitleSecond.toUpperCase(),
                  style: TextStyle(
                    color: ColorsGuide.placeholder,
                    fontSize: 42.0,
                    fontFamily: FontFamily.bodoniModaBoldItalic,
                  ),
                ),
              ),
              Positioned(
                top: 35.percentOfHeight,
                left: 15.percentOfWidth,
                child: Text(
                  S.of(context).bannerTitleThird.toUpperCase(),
                  style: TextStyle(
                    color: ColorsGuide.placeholder,
                    fontSize: 42.0,
                    fontFamily: FontFamily.bodoniModaBoldItalic,
                  ),
                ),
              ),
              Positioned(
                top: 45.percentOfHeight,
                child: const ButtonIn(),
              ),
              Positioned(
                top: 55.percentOfHeight,
                child: Points(
                  count: index,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Banner {
  final String image;

  const Banner(this.image);
}
