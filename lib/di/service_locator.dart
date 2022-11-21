import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:open_fashion/data/datasource/database_impl.dart';
import 'package:open_fashion/data/datasource/dio/dio_client.dart';
import 'package:open_fashion/data/repository_impl.dart';
import 'package:open_fashion/di/network_module.dart';
import 'package:open_fashion/presentation/bloc/all_categories/all_categories_cubit.dart';
import 'package:open_fashion/presentation/bloc/get_products/get_products_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerSingleton<Dio>(NetworkModule.provideDio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));

  getIt.registerSingleton(DatabaseImpl(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(RepositoryImpl(getIt<DatabaseImpl>()));

  getIt.registerSingleton(AllCategoriesCubit(getIt<RepositoryImpl>()));

  getIt.registerSingleton(
    GetProductsCubit(getIt<RepositoryImpl>()),
  );
}
