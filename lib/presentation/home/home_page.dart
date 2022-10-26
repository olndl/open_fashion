import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';
import 'package:open_fashion/presentation/home/components/base_app_bar.dart';
import 'package:open_fashion/presentation/home/components/custom_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseAppBar(backgroundColor: ColorsGuide.barBackground),
          SliverList(
            delegate: SliverChildListDelegate([]),
          ),
        ],
      ),
    );
  }
}
