import 'package:con_colegas/app/core/constants.dart';
import 'package:con_colegas/app/presentation/routes/routes.dart';
import 'package:con_colegas/app/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final bloque = height / 10;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/app_logo.png",
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              "con colegas",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          PopupMenuButton<int>(
              onSelected: (item) => onSelected(context, item),
              color: const Color.fromARGB(255, 255, 226, 187),
              icon: const Icon(
                Icons.grain_rounded,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text("Configuración"),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text("Contacto"),
                    )
                  ])
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const CustomButton(
              label: "Yo nunca",
              route: Routes.yoNunca,
            ),
            const CustomButton(
              label: "Verdad o reto",
              route: Routes.verdadOReto,
            ),
            const CustomButton(
                label: "Quién es más probable",
                route: Routes.quienEsMasProbable),
            OutlinedButton(
              onPressed: () {
                context.pushNamed(Routes.configuracion);
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                minimumSize: Size(double.infinity, bloque / 1.3),
                backgroundColor: AppColors.secondary.withOpacity(0.65),
                side: const BorderSide(color: AppColors.primary, width: 1),
              ),
              child: const Text(
                "Configuración",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const Text("Con colegas, 2024"),
          ],
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        context.pushNamed(Routes.configuracion);
        break;
      case 1:
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 280,
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                          "Terrassa, Barcelona. 2022.\n\nPara propuestas de frases o nuevos juegos, por favor contactad con el siguiente correo electrónico:\n\n gerard.ggf@gmail.com\n"),
                    ),
                    TextButton(
                      child: const Text(
                        'Cerrar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => context.pop(context),
                    )
                  ],
                ),
              ),
            );
          },
        );
        break;
    }
  }
}
