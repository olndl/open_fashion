import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:open_fashion/src/app/flavors/flavor.dart';
import 'package:open_fashion/src/app/flavors/flavor_config.dart';
import 'package:open_fashion/src/core/dimensions/adaptive_widget.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/navigation/config/app_router.dart';
import 'package:open_fashion/src/core/theme/app_theme.dart';
import 'package:open_fashion/src/di/injection_container.dart' as di;
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/new_products/new_products_cubit.dart';

class OpenFashionApp extends StatelessWidget {
  OpenFashionApp({super.key});

  final AppRouter _appRouter = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    const enableDevicePreview =
        String.fromEnvironment("enableDevicePreview") == "true";
    final useDevicePreview = enableDevicePreview &&
        kDebugMode &&
        FlavorConfig.instance.flavor == Flavor.dev;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.injector<CategoriesCubit>(),
        ),
        BlocProvider(
          create: (context) => di.injector<NewProductsCubit>(),
        ),
      ],
      child: AdaptiveWidget(
        builder: (context, orientation) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.supportedLocales,
            useInheritedMediaQuery: useDevicePreview,
            routerDelegate: _appRouter.delegate(
              initialRoutes: [const HomeRoute()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
            theme: AppTheme.lightTheme(),
            //home: const HomePage(),
          );
        },
      ),
    );
  }
}
