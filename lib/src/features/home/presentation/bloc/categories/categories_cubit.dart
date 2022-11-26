import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/features/home/domain/models/all_categories.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_categories_usecase.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({
    required this.getCategoriesUseCase,
  }) : super(CategoriesInitial());

  final GetCategoriesUseCase getCategoriesUseCase;

  Future<void> getCategories() async {
    emit(CategoriesLoading());
    AllCategories response = await getCategoriesUseCase();
    emit(
      response.isNotEmpty
          ? CategoriesLoaded(allCategories: response)
          : const CategoriesError(msg: 'Oops!'),
    );
  }
}
