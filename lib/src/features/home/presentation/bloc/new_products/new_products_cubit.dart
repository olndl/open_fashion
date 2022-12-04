import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_accessories_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_beauty_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_men_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_women_products_usecase.dart';

part 'new_products_state.dart';

class NewProductsCubit extends Cubit<GenericState> {
  final GetNewWomenProductsUseCase getNewWomenProductsUseCase;
  final GetNewMenProductsUseCase getNewMenProductsUseCase;
  final GetNewBeautyProductsUseCase getNewBeautyProductsUseCase;
  final GetNewAccessoriesProductsUseCase getNewAccessoriesProductsUseCase;

  NewProductsCubit({
    required this.getNewWomenProductsUseCase,
    required this.getNewMenProductsUseCase,
    required this.getNewBeautyProductsUseCase,
    required this.getNewAccessoriesProductsUseCase,
  }) : super(NewProductsInitial());

  Future<void> getNewAccessoriesProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getNewAccessoriesProductsUseCase();
      emit(NewProductsLoaded(newProducts: response));
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }

  Future<void> getNewBeautyProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getNewBeautyProductsUseCase();
      emit(NewProductsLoaded(newProducts: response));
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }

  Future<void> getNewWomenProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getNewWomenProductsUseCase();
      emit(NewProductsLoaded(newProducts: response));
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }

  Future<void> getNewMenProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getNewMenProductsUseCase();
      emit(NewProductsLoaded(newProducts: response));
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }
}
