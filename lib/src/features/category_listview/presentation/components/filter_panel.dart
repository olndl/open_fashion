import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/features/category_listview/presentation/components/counter.dart';
import 'package:open_fashion/src/features/category_listview/presentation/components/filter_buttons.dart';

class FilterPanel extends StatelessWidget {
  const FilterPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Counter(
            numberOfProducts: 3,
          ),
          FilterButtons()
        ],
      ),
    );
  }
}
