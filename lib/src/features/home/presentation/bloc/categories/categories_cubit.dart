import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/features/home/domain/models/category_item.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_categories_usecase.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategoriesUseCase getCategoriesUseCase;

  CategoriesCubit({
    required this.getCategoriesUseCase,
  }) : super(CategoriesInitial());

  Future<void> getCategories() async {
    try {
      emit(CategoriesLoading());
      List<CategoryItem> response = await getCategoriesUseCase();
      emit(
        CategoriesLoaded(
          allCategories: response,
          currantCategory: response.first,
        ),
      );
    } catch (error) {
      CategoriesError(msg: error.toString());
    }
  }

  Future<void> changeCategory(
      CategoryItem item, List<CategoryItem> list) async {
    list.first.isSelected = false;
    item.isSelected = false;
    item.isSelected = !item.isSelected;
    list[list.indexOf(item)].isSelected = !list[list.indexOf(item)].isSelected;
    emit(
      CategoriesLoaded(
        allCategories: list,
        currantCategory: list[list.indexOf(item)],
      ),
    );
  }
}
