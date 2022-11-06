import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_fashion/data/datasource/database.dart';
import 'package:open_fashion/data/datasource/database_impl.dart';
import 'package:open_fashion/data/datasource/dio/dio_client.dart';
import 'package:open_fashion/data/repository_impl.dart';
import 'package:open_fashion/domain/repository.dart';

final databaseProvider =
    Provider<Database>((_) => DatabaseImpl(dioClient: DioClient()));
final repositoryProvider = Provider<Repository>(
  (ref) => RepositoryImpl(ref.watch(databaseProvider)),
);
