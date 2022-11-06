import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_fashion/presentation/providers/category_list_provider.dart';

class ProductGrid extends ConsumerWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(womenViewModelStateNotifierProvider).maybeWhen(
          success: (content) => SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 2.0,
              mainAxisExtent: 200,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  child: Image.network(content[index].image!),
                );
              },
              childCount: content.length,
            ),
          ),
          error: (e) => SliverToBoxAdapter(child: Center()),
          orElse: () => const SliverToBoxAdapter(
              child: Center(
            heightFactor: 15,
            child: CircularProgressIndicator(),
          )),
        );
  }
}
