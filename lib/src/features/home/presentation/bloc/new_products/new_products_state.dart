part of 'new_products_cubit.dart';

abstract class GenericState extends Equatable {
  const GenericState();

  @override
  List<Object> get props => [];
}

class NewProductsInitial extends GenericState {}

class NewProductsLoading extends GenericState {}

class NewProductsLoaded extends GenericState {
  final List<Product> newProducts;
  const NewProductsLoaded({
    required this.newProducts,
  });
  @override
  List<Object> get props => [newProducts];
}

class NewProductsError extends GenericState {
  final String msg;
  const NewProductsError({required this.msg});
  @override
  List<Object> get props => [msg];
}
