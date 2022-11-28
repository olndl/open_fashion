import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/new_products/new_products_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/components/product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewProductsCubit>(context).getNewWomenProducts();
    return BlocBuilder<NewProductsCubit, NewProductsState>(
      builder: (context, state) {
        if (state is NewProductsLoading) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: CircularProgressIndicator(color: Colors.black),
              ),
            ),
          );
        } else if (state is NewProductsLoaded) {
          //logger.info('women:${state.props}');
          return SliverPadding(
            padding: EdgeInsets.all(3.percentOfWidth),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 100.percentOfWidth / 100.percentOfHeight,
                mainAxisExtent: 46.percentOfHeight,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductCard(
                    product: state.newProducts[index],
                  );
                },
                childCount: state.newProducts.length,
              ),
            ),
          );
        } else if (state is NewProductsError) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(25),
              child: Center(child: Text(state.msg)),
            ),
          );
        }
        return const Nothing();
      },
    );
  }
}