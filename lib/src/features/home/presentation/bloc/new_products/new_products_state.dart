part of 'new_products_cubit.dart';

abstract class NewProductsState extends Equatable {
  const NewProductsState();

  @override
  List<Object> get props => [];
}

class NewProductsInitial extends NewProductsState {}

class NewProductsLoading extends NewProductsState {}

class NewProductsLoaded extends NewProductsState {
  final List<Product> newProducts;
  const NewProductsLoaded({
    required this.newProducts,
  });
  @override
  List<Object> get props => [newProducts];
}

class NewProductsError extends NewProductsState {
  final String msg;
  const NewProductsError({required this.msg});
  @override
  List<Object> get props => [msg];
}
