import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/data/repository_impl.dart';
import 'package:open_fashion/domain/entities/all_categories.dart';

part 'all_categories_state.dart';

class AllCategoriesCubit extends Cubit<AllCategoriesState> {
  final RepositoryImpl _repository;

  AllCategoriesCubit(this._repository) : super(AllCategoriesInitial());

  void fetchAllCategories() {
    _repository
        .getCategoryList()
        .then((value) => emit(AllCategoriesLoaded(value)));
  }
}
