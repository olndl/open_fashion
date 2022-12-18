import 'package:open_fashion/src/core/navigation/app/product_details/product_details_navigator.dart';
import 'package:open_fashion/src/core/navigation/config/base_navigator.dart';

class ProductDetailsNavigatorImpl implements ProductDetailsNavigator {
  final BaseNavigator baseNavigator;

  ProductDetailsNavigatorImpl({required this.baseNavigator});

  @override
  void back() {
    baseNavigator.back();
  }
}
