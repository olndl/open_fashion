import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/presentation/widgets/base_app_bar.dart';
import 'package:open_fashion/presentation/widgets/custom_scaffold.dart';
import 'package:open_fashion/presentation/widgets/gap.dart';
import 'package:open_fashion/presentation/widgets/new_arrival.dart';
import 'package:open_fashion/presentation/widgets/onboarding_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var _scrollController, _tabController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = [
      'lib/assets/png/image_main1.png',
      'lib/assets/png/image_main2.png',
      'lib/assets/png/image_main3.png',
    ];
    return CustomScaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            BaseAppBar(backgroundColor: ColorsGuide.barBackground),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((String pic) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context) {
                  return CustomScrollView(
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                        child: OnboardingBanner(
                          image: pic,
                          count: tabs.indexOf(pic),
                          firstText: 'luxury',
                          secondText: 'fashion',
                          thirdText: '&accessories',
                        ),
                      ),
                      const SliverToBoxAdapter(
                          child: Gap(
                        param: 5,
                      )),
                      const SliverToBoxAdapter(
                        child: NewArrival(),
                      )
                    ],
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}