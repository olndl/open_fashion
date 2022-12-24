import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_fashion/src/core/navigation/config/routes.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';
import 'package:open_fashion/src/features/home/presentation/pages/home_page.dart';
import 'package:open_fashion/src/features/product_details/presentation/pages/product_details_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: autoRoutes,
  preferRelativeImports: false,
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {}
