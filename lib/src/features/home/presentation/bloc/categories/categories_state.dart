part of 'categories_cubit.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final AllCategories allCategories;
  const CategoriesLoaded({
    required this.allCategories,
  });
  @override
  List<Object> get props => [allCategories];
}

class CategoriesError extends CategoriesState {
  final String msg;
  const CategoriesError({required this.msg});
  @override
  List<Object> get props => [msg];
}
