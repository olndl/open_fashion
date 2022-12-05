import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_accessories_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_beauty_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_men_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_women_products_usecase.dart';

part 'new_products_state.dart';

class NewProductsCubit extends Cubit<NewProductsState> {
  final GetNewWomenProductsUseCase getNewWomenProductsUseCase;
  final GetNewMenProductsUseCase getNewMenProductsUseCase;
  final GetNewBeautyProductsUseCase getNewBeautyProductsUseCase;
  final GetNewAccessoriesProductsUseCase getNewAccessoriesProductsUseCase;

  NewProductsCubit({
    required this.getNewWomenProductsUseCase,
    required this.getNewMenProductsUseCase,
    required this.getNewBeautyProductsUseCase,
    required this.getNewAccessoriesProductsUseCase,
  }) : super(NewProductsInitial()) {
    getNewProducts();
  }

  Future<void> getNewProducts() async {
    try {
      emit(NewProductsLoading());
      List<Product> womenResponse = await getNewWomenProductsUseCase();
      List<Product> menResponse = await getNewMenProductsUseCase();
      List<Product> beautyResponse = await getNewBeautyProductsUseCase();
      List<Product> accessoriesResponse =
          await getNewAccessoriesProductsUseCase();
      emit(
        NewProductsLoaded(
          womenResponse,
          menResponse,
          beautyResponse,
          accessoriesResponse,
        ),
      );
    } catch (error) {
      NewProductsError(msg: error.toString());
    }
  }
}
