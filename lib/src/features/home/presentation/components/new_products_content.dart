import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';
import 'package:open_fashion/src/core/widgets/app_bar_delegate.dart';
import 'package:open_fashion/src/core/widgets/dialogs/error_dialog.dart';
import 'package:open_fashion/src/core/widgets/loading_widget.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/core/widgets/product_grid.dart';
import 'package:open_fashion/src/features/home/domain/models/main_category.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/new_products/new_products_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/components/custom_tab_indicator.dart';
import 'package:open_fashion/src/features/home/presentation/components/explore_more_button.dart';
import 'package:open_fashion/src/features/home/presentation/components/main_header.dart';

class NewProductsContent extends StatelessWidget {
  final List<MainCategory> allCategories;

  const NewProductsContent({
    Key? key,
    required this.allCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewProductsCubit, NewProductsState>(
      bloc: BlocProvider.of<NewProductsCubit>(context),
      builder: (BuildContext context, NewProductsState state) {
        if (state is NewProductsLoading) {
          return const LoadingWidget();
        } else if (state is NewProductsLoaded) {
          return SliverPersistentHeader(
            delegate: SliverAppBarDelegate(
              minHeight: 100.percentOfHeight,
              maxHeight: 100.percentOfHeight,
              child: DefaultTabController(
                length: allCategories.length,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: MainHeader(
                        text: S.of(context).newArrivalTitle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: ColorsGuide.inputBackground,
                        child: TabBar(
                          indicator: CustomTabIndicator(
                            color: ColorsGuide.secondary,
                            radius: 3,
                          ),
                          labelColor: ColorsGuide.titleActive,
                          unselectedLabelColor: ColorsGuide.barBackground,
                          isScrollable: true,
                          indicatorPadding: EdgeInsets.all(2.percentOfWidth),
                          tabs: List.generate(
                            allCategories.length,
                            (index) => Tab(
                              child: Text(
                                allCategories[index].label.toUpperCase(),
                                style: TextStyles.subTitle14.copyWith(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 22,
                      child: TabBarView(
                        children: [
                          ProductGrid(products: state.newWomenProducts),
                          ProductGrid(products: state.newMenProducts),
                          ProductGrid(products: state.newBeautyProducts),
                          ProductGrid(
                            products: state.newAccessoriesProducts,
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ExploreMore(),
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (state is NewProductsError) {
          ErrorDialog.showErrorDialog(context, state.msg);
          return const SliverToBoxAdapter(child: Nothing());
        }
        return const SliverToBoxAdapter(child: Nothing());
      },
    );
  }
}
