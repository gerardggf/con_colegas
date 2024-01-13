import 'package:con_colegas/app/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/generated/translations.g.dart';

class ConColegasApp extends ConsumerStatefulWidget {
  const ConColegasApp({
    super.key,
    this.initialRoute,
    this.overrideRoutes,
  });

  final String? initialRoute;
  final List<GoRoute>? overrideRoutes;

  @override
  ConsumerState<ConColegasApp> createState() => _ConColegasAppState();
}

class _ConColegasAppState extends ConsumerState<ConColegasApp>
    with RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Con colegas',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: TranslationProvider.of(context).flutterLocale,
    );
  }
}
