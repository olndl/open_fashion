import 'package:flutter/material.dart';
import 'package:open_fashion/presentation/widgets/base_app_bar.dart';
import 'package:open_fashion/presentation/widgets/custom_scaffold.dart';
import 'package:open_fashion/presentation/widgets/new_arrival.dart';

import '../../../core/theme/colors_guide.dart';
import '../../widgets/product_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.inputBackground),
          const SliverToBoxAdapter(
            child: NewArrival(),
          ),
          ProductGrid()
        ],
      ),
    );
  }
}
