import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_women_products_usecase.dart';

part 'new_products_state.dart';

class NewProductsCubit extends Cubit<NewProductsState> {
  final GetNewWomenProductsUseCase getNewWomenProductsUseCase;

  NewProductsCubit({
    required this.getNewWomenProductsUseCase,
  }) : super(NewProductsInitial());

  Future<void> getNewWomenProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getNewWomenProductsUseCase();
      emit(NewProductsLoaded(newProducts: response));
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }
}
