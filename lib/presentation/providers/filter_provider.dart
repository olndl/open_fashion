// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:open_fashion/presentation/widgets/category_filter.dart';
//
// class Filter {
//   final CategoryItem? category;
//   final bool showAllAccepted;
//
//   Filter({
//     required this.category,
//     required this.showAllAccepted,
//   });
// }
//
// final productsFilterProvider =
//     StateNotifierProvider<ProductsFilter, Filter>((ref) {
//   return ProductsFilter();
// });
//
// class ProductsFilter extends StateNotifier<Filter> {
//   ProductsFilter()
//       : super(
//           Filter(
//             category: null,
//             showAllAccepted: false,
//           ),
//         );
//
//   void filterBy(CategoryItem? category) {
//     state = Filter(
//       category: category,
//       showAllAccepted: state.showAllAccepted,
//     );
//   }
//
//   void showAllAccepted(bool show) {
//     state = Filter(
//       category: state.category,
//       showAllAccepted: show,
//     );
//   }
// }
