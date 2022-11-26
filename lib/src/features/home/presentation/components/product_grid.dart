// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:open_fashion/src/core/dimensions/dimension.dart';
// import 'package:open_fashion/src/features/home/presentation/components/product_card.dart';
// import 'package:open_fashion/src/presentation/bloc/get_products/get_products_cubit.dart';
// import 'package:open_fashion/src/presentation/utils/dimensions/dimension.dart';
//
// class ProductGrid extends StatelessWidget {
//   const ProductGrid({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     BlocProvider.of<GetProductsCubit>(context).fetchWomenTop();
//     return BlocBuilder<GetProductsCubit, GetProductsState>(
//       builder: (context, state) {
//         if (state is! GetProductsLoaded) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         final womenTop = state.products;
//         return SliverPadding(
//           padding: EdgeInsets.all(3.percentOfWidth),
//           sliver: SliverGrid(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 100.percentOfWidth / 100.percentOfHeight,
//               mainAxisExtent: 46.percentOfHeight,
//             ),
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 return ProductCard(
//                   product: womenTop[index],
//                 );
//               },
//               childCount: womenTop.length,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
