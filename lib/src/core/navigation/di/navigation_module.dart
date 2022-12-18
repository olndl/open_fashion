import 'package:get_it/get_it.dart';
import 'package:open_fashion/src/core/navigation/app/home/home_navigator.dart';
import 'package:open_fashion/src/core/navigation/app/home/home_navigator_impl.dart';
import 'package:open_fashion/src/core/navigation/config/app_router.dart';
import 'package:open_fashion/src/core/navigation/config/base_navigator.dart';
import 'package:open_fashion/src/core/navigation/config/base_navigator_impl.dart';

extension NavigationModule on GetIt {
  void navigationModule() {
    // router
    registerLazySingleton(() => AppRouter());

    // base
    registerFactory<BaseNavigator>(() => BaseNavigatorImpl(appRouter: get()));

    // home
    registerFactory<HomeNavigator>(
      () => HomeNavigatorImpl(
        navigator: get(),
        product: get(),
      ),
    );

    // search
    // registerFactory<SearchNavigator>(
    //   () => SearchNavigatorImpl(baseNavigator: get()),
    // );
  }
}
