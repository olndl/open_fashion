import 'package:open_fashion/src/core/navigation/app/home/home_navigator.dart';
import 'package:open_fashion/src/core/navigation/config/app_router.dart';
import 'package:open_fashion/src/core/navigation/config/base_navigator.dart';
import 'package:open_fashion/src/features/home/domain/models/product.dart';

class HomeNavigatorImpl implements HomeNavigator {
  final BaseNavigator navigator;
  final Product product;

  HomeNavigatorImpl({
    required this.navigator,
    required this.product,
  });

  @override
  void toDetailsPage() {
    navigator.to(
      ProductDetailsRoute(product: product),
    );
  }
}
