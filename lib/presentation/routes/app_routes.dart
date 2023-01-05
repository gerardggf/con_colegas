import 'package:con_colegas/presentation/views/config_qemp.dart';
import 'package:con_colegas/presentation/views/configuracion.dart';
import 'package:con_colegas/presentation/views/quienesmasprobable.dart';
import 'package:con_colegas/presentation/views/verdadoreto.dart';
import 'package:con_colegas/presentation/views/yonunca.dart';
import 'package:flutter/material.dart';

import '../views/home.dart';
import 'routes.dart';

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.home: (_) => const HomeScreen(),
    Routes.yoNunca: (_) => const YoNuncaPage(),
    Routes.quienEsMasProbable: (_) => const QuienEsMasProbablePage(),
    Routes.verdadOReto: (_) => const VerdadORetoPage(),
    Routes.configuracion: (_) => const ConfiguracionPage(),
    Routes.configQemp: (_) => const ConfigQuienEsMasProbablePage(),
  };
}
