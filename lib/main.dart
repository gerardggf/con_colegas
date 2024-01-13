import 'package:con_colegas/app/core/global_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/core/generated/translations.g.dart';
import 'app/presentation/con_colegas_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    Root(
      providerOverrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
    ),
  );
}

class Root extends StatelessWidget {
  const Root({
    super.key,
    required this.providerOverrides,
  });

  final List<Override> providerOverrides;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: providerOverrides,
      child: TranslationProvider(
        child: const ConColegasApp(),
      ),
    );
  }
}
