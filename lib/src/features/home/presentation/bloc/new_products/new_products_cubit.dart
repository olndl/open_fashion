import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_all_new_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_electronics_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_jewelery_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_men_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_women_products_usecase.dart';

part 'new_products_state.dart';

class NewProductsCubit extends Cubit<GenericState> {
  final GetNewWomenProductsUseCase getNewWomenProductsUseCase;
  final GetNewMenProductsUseCase getNewMenProductsUseCase;
  final GetNewJeweleryProductsUseCase getNewJeweleryProductsUseCase;
  final GetNewElectronicsProductsUseCase getNewElectronicsProductsUseCase;
  final GetAllNewProductsUseCase getAllNewProductsUseCase;

  NewProductsCubit({
    required this.getNewWomenProductsUseCase,
    required this.getNewMenProductsUseCase,
    required this.getNewJeweleryProductsUseCase,
    required this.getNewElectronicsProductsUseCase,
    required this.getAllNewProductsUseCase,
  }) : super(NewProductsInitial());

  Future<void> getAllNewProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getAllNewProductsUseCase();
      emit(NewProductsLoaded(newProducts: response));
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }

  Future<void> getNewElectronicsProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getNewElectronicsProductsUseCase();
      emit(NewProductsLoaded(newProducts: response));
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }

  Future<void> getNewJeweleryProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> response = await getNewJeweleryProductsUseCase();
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
