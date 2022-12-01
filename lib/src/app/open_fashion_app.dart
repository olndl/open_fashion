import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:open_fashion/src/core/dimensions/adaptive_widget.dart';
import 'package:open_fashion/src/core/localization/l10n/s.dart';
import 'package:open_fashion/src/core/theme/app_theme.dart';
import 'package:open_fashion/src/di/injection_container.dart' as di;
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/new_products/new_products_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/pages/home_page.dart';

class OpenFashionApp extends StatelessWidget {
  const OpenFashionApp({super.key});

  @override
  Widget build(BuildContext context) {
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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.supportedLocales,
            theme: AppTheme.lightTheme(),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
