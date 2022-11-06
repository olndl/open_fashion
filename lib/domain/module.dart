import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_fashion/data/module.dart';
import 'package:open_fashion/domain/usecase/get_category_list_usecase.dart';
import 'package:open_fashion/domain/usecase/get_category_list_usecase_impl.dart';
import 'package:open_fashion/domain/usecase/get_womens_products_usecase.dart';
import 'package:open_fashion/domain/usecase/get_womens_products_usecase_impl.dart';

final getCategoryListUseCaseProvider = Provider<GetCategoryListUseCase>(
  (ref) => GetCategoryListUseCaseImpl(ref.watch(repositoryProvider)),
);

final getWomensProductstUseCaseProvider = Provider<GetWomensProductstUseCase>(
  (ref) => GetWomensProductstUseCaseImpl(ref.watch(repositoryProvider)),
);
