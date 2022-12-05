part of 'new_products_cubit.dart';

abstract class NewProductsState extends Equatable {
  const NewProductsState();

  @override
  List<Object> get props => [];
}

class NewProductsInitial extends NewProductsState {}

class NewProductsLoading extends NewProductsState {}

class NewProductsLoaded extends NewProductsState {
  final List<Product> newWomenProducts;
  final List<Product> newMenProducts;
  final List<Product> newBeautyProducts;
  final List<Product> newAccessoriesProducts;

  const NewProductsLoaded(
    this.newWomenProducts,
    this.newMenProducts,
    this.newBeautyProducts,
    this.newAccessoriesProducts,
  );

  @override
  List<Object> get props => [
        newWomenProducts,
        newMenProducts,
        newBeautyProducts,
        newAccessoriesProducts
      ];
}

class NewProductsError extends NewProductsState {
  final String msg;
  const NewProductsError({required this.msg});
  @override
  List<Object> get props => [msg];
}
