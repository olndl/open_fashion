part of 'categories_cubit.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
  Object get item => props.first;
}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List<CategoryItem> allCategories;
  final CategoryItem currantCategory;

  const CategoriesLoaded({
    required this.allCategories,
    required this.currantCategory,
  });

  @override
  List<Object> get props => [allCategories];

  @override
  Object get item => allCategories.first;
}

class CategoriesError extends CategoriesState {
  final String msg;
  const CategoriesError({required this.msg});
  @override
  List<Object> get props => [msg];

  @override
  Object get item => msg;
}
