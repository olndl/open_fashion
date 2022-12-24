import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:open_fashion/src/core/api/dio_consumer.dart';
import 'package:open_fashion/src/core/navigation/config/app_router.dart';
import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/data/datasource/categories_datasource_impl.dart';
import 'package:open_fashion/src/features/home/data/datasource/new_products_datasource.dart';
import 'package:open_fashion/src/features/home/data/datasource/new_products_datasource_impl.dart';
import 'package:open_fashion/src/features/home/data/repositories/categories_repository_impl.dart';
import 'package:open_fashion/src/features/home/data/repositories/new_products_repository_impl.dart';
import 'package:open_fashion/src/features/home/domain/repositories/categories_repository.dart';
import 'package:open_fashion/src/features/home/domain/repositories/new_products_repository.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_accessories_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_beauty_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_men_products_usecase.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_new_women_products_usecase.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/new_products/new_products_cubit.dart';

final injector = GetIt.instance;

Future<void> init() async {
  //! Navigation

  // router
  injector.registerLazySingleton(() => AppRouter());

  //! Features

  // Blocs

  injector.registerFactory<CategoriesCubit>(
    () => CategoriesCubit(
      getCategoriesUseCase: injector(),
    ),
  );

  injector.registerFactory<NewProductsCubit>(
    () => NewProductsCubit(
      getNewWomenProductsUseCase: injector(),
      getNewMenProductsUseCase: injector(),
      getNewBeautyProductsUseCase: injector(),
      getNewAccessoriesProductsUseCase: injector(),
    ),
  );

  // Use cases
  injector.registerLazySingleton<GetCategoriesUseCase>(
    () => GetCategoriesUseCase(injector()),
  );

  injector.registerLazySingleton<GetNewWomenProductsUseCase>(
    () => GetNewWomenProductsUseCase(injector()),
  );

  injector.registerLazySingleton<GetNewMenProductsUseCase>(
    () => GetNewMenProductsUseCase(injector()),
  );

  injector.registerLazySingleton<GetNewBeautyProductsUseCase>(
    () => GetNewBeautyProductsUseCase(injector()),
  );

  injector.registerLazySingleton<GetNewAccessoriesProductsUseCase>(
    () => GetNewAccessoriesProductsUseCase(injector()),
  );

  // Repository
  injector.registerLazySingleton<CategoriesRepository>(
    () => CategoriesRepositoryImpl(injector()),
  );
  injector.registerLazySingleton<NewProductsRepository>(
    () => NewProductsRepositoryImpl(injector()),
  );

  // Data Sources
  injector.registerLazySingleton<CategoriesDataSource>(
    () => CategoriesDataSourceImpl(dioConsumer: injector()),
  );

  injector.registerLazySingleton<NewProductsDataSource>(
    () => NewProductsDataSourceImpl(dioConsumer: injector()),
  );

  //! Core
  injector.registerLazySingleton(
    () => DioConsumer(),
  );

  //! External
  injector.registerLazySingleton(() => Dio());
}
