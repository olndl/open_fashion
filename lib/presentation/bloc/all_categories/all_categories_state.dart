part of 'all_categories_cubit.dart';

@immutable
abstract class AllCategoriesState {}

class AllCategoriesInitial extends AllCategoriesState {}

class AllCategoriesLoaded extends AllCategoriesState {
  final AllCategories allCategories;

  AllCategoriesLoaded(this.allCategories);
}
