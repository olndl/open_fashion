import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:open_fashion/src/core/api/api_comsumer.dart';
import 'package:open_fashion/src/core/api/dio_consumer.dart';
import 'package:open_fashion/src/features/home/data/datasource/categories_datasource.dart';
import 'package:open_fashion/src/features/home/data/datasource/categories_datasource_impl.dart';
import 'package:open_fashion/src/features/home/data/repositories/categories_repository_impl.dart';
import 'package:open_fashion/src/features/home/domain/repositories/categories_repository.dart';
import 'package:open_fashion/src/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';

final injector = GetIt.instance;

Future<void> init() async {
  //! Features

  // Blocs
  injector.registerFactory<CategoriesCubit>(
    () => CategoriesCubit(getCategoriesUseCase: injector()),
  );

  // Use cases
  injector.registerLazySingleton<GetCategoriesUseCase>(
    () => GetCategoriesUseCase(injector()),
  );

  // Repository
  injector.registerLazySingleton<CategoriesRepository>(
    () => CategoriesRepositoryImpl(injector()),
  );
  // Data Sources
  injector.registerLazySingleton<CategoriesDataSource>(
    () => CategoriesDataSourceImpl(apiConsumer: injector()),
  );

  //! Core
  injector.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(),
  );

  //! External
  injector.registerLazySingleton(() => Dio());
}
