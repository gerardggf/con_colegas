import 'package:con_colegas/constants.dart';
import 'package:flutter/material.dart';
import 'package:con_colegas/presentation/views/home.dart';
import 'package:flutter/services.dart';

import 'presentation/routes/app_routes.dart';
import 'presentation/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Con colegas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kAppB,
      ),
      home: const HomeScreen(),
      initialRoute: Routes.initialRoute,
      routes: appRoutes,
    );
  }
}
