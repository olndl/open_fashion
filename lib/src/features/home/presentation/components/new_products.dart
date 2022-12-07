import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/core/errors/logger.dart';
import 'package:open_fashion/src/core/widgets/dialogs/error_dialog.dart';
import 'package:open_fashion/src/core/widgets/loading_widget.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/components/new_products_content.dart';

class NewProducts extends StatelessWidget {
  const NewProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      bloc: BlocProvider.of<CategoriesCubit>(context),
      builder: (BuildContext context, CategoriesState state) {
        logger.info('categories');
        logger.info(state);
        if (state is CategoriesLoading) {
          return const LoadingWidget();
        } else if (state is CategoriesLoaded) {
          return NewProductsContent(allCategories: state.allCategories);
        } else if (state is CategoriesError) {
          ErrorDialog.showErrorDialog(context, state.msg);
          return const SliverToBoxAdapter(child: Nothing());
        }
        return const SliverToBoxAdapter(child: Nothing());
      },
    );
  }
}
