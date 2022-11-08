import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_fashion/presentation/providers/category_list_provider.dart';
import 'package:open_fashion/presentation/utils/dimensions/dimension.dart';
import 'package:open_fashion/presentation/widgets/product_card.dart';

class ProductGrid extends ConsumerWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(womenViewModelStateNotifierProvider).maybeWhen(
          success: (content) => SliverPadding(
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
                    product: content[index],
                  );
                },
                childCount: content.length,
              ),
            ),
          ),
          error: (e) => const SliverToBoxAdapter(child: Center()),
          orElse: () => const SliverToBoxAdapter(
            child: Center(
              heightFactor: 15,
              child: CircularProgressIndicator(),
            ),
          ),
        );
  }
}
