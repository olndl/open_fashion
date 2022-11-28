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
}
