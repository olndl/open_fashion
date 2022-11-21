import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/data/repository_impl.dart';
import 'package:open_fashion/domain/entities/product.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  final RepositoryImpl _repository;

  GetProductsCubit(this._repository) : super(GetProductsInitial());

  void fetchWomenTop() {
    _repository
        .getWomensClothingTop()
        .then((value) => emit(GetProductsLoaded(value)));
  }
}
