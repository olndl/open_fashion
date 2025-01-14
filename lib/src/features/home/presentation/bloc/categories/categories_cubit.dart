import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/features/home/domain/models/main_category.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_categories_usecase.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategoriesUseCase getCategoriesUseCase;

  CategoriesCubit({
    required this.getCategoriesUseCase,
  }) : super(CategoriesInitial()) {
    getCategories();
  }

  Future<void> getCategories() async {
    try {
      emit(CategoriesLoading());
      List<MainCategory> response = await getCategoriesUseCase();
      emit(
        CategoriesLoaded(
          allCategories: response,
        ),
      );
    } catch (error) {
      CategoriesError(msg: error.toString());
    }
  }
}
