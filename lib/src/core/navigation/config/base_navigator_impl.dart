import 'package:auto_route/auto_route.dart';
import 'package:open_fashion/src/core/navigation/config/app_router.dart';
import 'package:open_fashion/src/core/navigation/config/base_navigator.dart';

class BaseNavigatorImpl implements BaseNavigator {
  final AppRouter appRouter;

  BaseNavigatorImpl({required this.appRouter});

  @override
  void back() {
    appRouter.navigateBack();
  }

  @override
  void to(PageRouteInfo route) {
    appRouter.push(route);
  }
}
