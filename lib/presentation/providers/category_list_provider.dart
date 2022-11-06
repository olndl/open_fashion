import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_fashion/domain/entities/all_categories.dart';
import 'package:open_fashion/domain/entities/product.dart';
import 'package:open_fashion/domain/module.dart';
import 'package:open_fashion/domain/usecase/get_category_list_usecase.dart';
import 'package:open_fashion/domain/usecase/get_womens_products_usecase.dart';
import 'package:open_fashion/presentation/utils/state/state.dart';

final categoryListViewModelStateNotifierProvider = StateNotifierProvider
    .autoDispose<CategoryListViewModel, State<AllCategories>>((ref) {
  return CategoryListViewModel(
    ref.watch(getCategoryListUseCaseProvider),
  );
});

final womenViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<WomenViewModel, State<List<Product>>>(
        (ref) {
  return WomenViewModel(
    ref.watch(getWomensProductstUseCaseProvider),
  );
});

class CategoryListViewModel extends StateNotifier<State<AllCategories>> {
  final GetCategoryListUseCase _getCategoryListUseCase;

  CategoryListViewModel(
    this._getCategoryListUseCase,
  ) : super(const State.init()) {
    getCategoryList();
  }

  getCategoryList() async {
    try {
      state = const State.loading();
      final categoryList = await _getCategoryListUseCase.execute();
      state = State.success(
        categoryList,
      );
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}

class WomenViewModel extends StateNotifier<State<List<Product>>> {
  final GetWomensProductstUseCase _getWomensProductstUseCase;

  WomenViewModel(this._getWomensProductstUseCase) : super(const State.init()) {
    getWomen();
  }

  getWomen() async {
    try {
      state = const State.loading();
      final women = await _getWomensProductstUseCase.execute();
      state = State.success(
        women,
      );
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
