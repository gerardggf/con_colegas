import 'package:con_colegas/app/presentation/con_colegas_app.dart';
import 'package:con_colegas/app/presentation/modules/home_view.dart';
import 'package:con_colegas/app/presentation/modules/yonunca.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../modules/config_qemp.dart';
import '../modules/configuracion.dart';
import '../modules/quienesmasprobable.dart';
import '../modules/verdadoreto.dart';
import 'routes.dart';

mixin RouterMixin on ConsumerState<ConColegasApp> {
  GoRouter? _router;
  String? _initialRouteName;

  bool _loading = true;
  bool get loading => _loading;

  GoRouter get router {
    if (_router != null) {
      return _router!;
    }

    final routes = [
      GoRoute(
        name: Routes.home,
        path: '/',
        builder: (_, __) => const HomeView(),
      ),
      GoRoute(
        name: Routes.yoNunca,
        path: '/yo-nunca',
        builder: (_, __) => const YoNuncaView(),
      ),
      GoRoute(
        name: Routes.quienEsMasProbable,
        path: '/quien-es-mas-probable-que',
        builder: (_, __) => const QuienEsMasProbableView(),
      ),
      GoRoute(
        name: Routes.verdadOReto,
        path: '/verdad-o-reto',
        builder: (_, __) => const VerdadORetoView(),
      ),
      GoRoute(
        name: Routes.settings,
        path: '/settings',
        builder: (_, __) => const SettingsView(),
      ),
      GoRoute(
        name: Routes.configQemp,
        path: '/settings-qemp',
        builder: (_, __) => const SettingsQuienEsMasProbablePage(),
      ),
    ];

    final overrideRoutes = widget.overrideRoutes;
    if (overrideRoutes?.isNotEmpty ?? false) {
      final names = overrideRoutes!.map(
        (e) => e.name,
      );
      routes.removeWhere(
        (element) {
          final name = element.name;
          if (name != null) {
            return names.contains(name);
          }
          return false;
        },
      );
      routes.addAll(overrideRoutes);
    }

    final initialLocation = routes
        .firstWhere(
          (element) => element.name == _initialRouteName,
          orElse: () => routes.first,
        )
        .path;

    _router = GoRouter(
      initialLocation: initialLocation,
      routes: routes,
    );
    return _router!;
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialRoute != null) {
      _initialRouteName = widget.initialRoute!;
      _loading = false;
    } else {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => _init(),
      );
    }
  }

  Future<void> _init() async {
    _initialRouteName = await getInitialRouteName(context, ref);
    setState(() {
      _loading = false;
    });
  }

  Future<String> getInitialRouteName(
      BuildContext context, WidgetRef ref) async {
    // final connectivityRepository = ref.read(connectivityRepositoryProvider);

    // await connectivityRepository.initialize();
    // final hasInternet = connectivityRepository.hasInternet;

    // if (!hasInternet) {
    //   return Routes.offline;
    // }
    return Routes.home;
  }
}
