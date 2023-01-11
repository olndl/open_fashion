import 'package:flutter/cupertino.dart';

import '../../../../core/theme/colors_guide.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../home/presentation/components/next_page_app_bar.dart';

class CategoryListViewPage extends StatelessWidget {
  const CategoryListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          NextPageAppBar(backgroundColor: ColorsGuide.inputBackground),
        ],
      ),
    );
  }
}
