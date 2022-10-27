import 'package:flutter/material.dart';
import 'package:open_fashion/presentation/widgets/custom_scaffold.dart';
import 'package:open_fashion/presentation/widgets/new_arrival.dart';

import '../../../core/theme/colors_guide.dart';
import '../../widgets/base_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: [
          BaseAppBar(backgroundColor: ColorsGuide.barBackground),
          SliverToBoxAdapter(
            child: Image.asset('lib/assets/png/image_main.png'),
          ),
          SliverPadding(padding: EdgeInsets.all(10)),
          SliverToBoxAdapter(
            child: NewArrival(),
          ),
          SliverPadding(padding: EdgeInsets.all(10)),
          SliverList(
            delegate: SliverChildListDelegate([]),
          )
        ],
      ),
    );
  }
}
