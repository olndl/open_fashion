import 'package:auto_route/annotations.dart';
import 'package:open_fashion/src/core/entity/routes.dart';
import 'package:open_fashion/src/features/home/presentation/pages/home_page.dart';
import 'package:open_fashion/src/features/product_details/presentation/pages/product_details_page.dart';

const autoRoutes = [
  AutoRoute(
    path: Routes.home,
    page: HomePage,
    initial: true,
  ),
  AutoRoute(
    path: Routes.details,
    page: ProductDetailsPage,
  ),
];
