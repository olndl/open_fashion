part of 'get_products_cubit.dart';

@immutable
abstract class GetProductsState {}

class GetProductsInitial extends GetProductsState {}

class GetProductsLoaded extends GetProductsState {
  final List<Product> products;

  GetProductsLoaded(this.products);
}
