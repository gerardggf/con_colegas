import 'package:con_colegas/constants.dart';
import 'package:con_colegas/screens/configQEMP.dart';
import 'package:con_colegas/screens/quienesmasprobable.dart';
import 'package:flutter/material.dart';
import 'package:con_colegas/screens/yonunca.dart';
import 'package:con_colegas/screens/verdadoreto.dart';
import 'package:con_colegas/screens/configuracion.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      getPrefs();
      getQEMPpref();
    });

    var height = MediaQuery.of(context).size.height;
    var bloque = height / 10;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "con colegas",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [
            PopupMenuButton<int>(
                onSelected: (item) => onSelected(context, item),
                color: Colors.orangeAccent,
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
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const YoNuncaScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      onSurface: kAppB,
                      minimumSize: Size(double.infinity, bloque),
                      backgroundColor: Colors.white,
                      primary: kAppB,
                      side: const BorderSide(color: kColrPrim, width: 3)),
                  child: const Text("Yo nunca",
                      style: TextStyle(fontSize: 23, color: Colors.black)),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerdadORetoScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      onSurface: kAppB,
                      minimumSize: Size(double.infinity, bloque),
                      backgroundColor: Colors.white,
                      primary: kAppB,
                      side: const BorderSide(color: kColrPrim, width: 3)),
                  child: const Text("Verdad o reto",
                      style: TextStyle(fontSize: 23, color: Colors.black)),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QEMPScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      onSurface: kAppB,
                      minimumSize: Size(double.infinity, bloque),
                      backgroundColor: Colors.white,
                      primary: kAppB,
                      side: const BorderSide(color: kColrPrim, width: 3)),
                  child: const Text("Quién es más probable",
                      style: TextStyle(fontSize: 23, color: Colors.black)),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfiguracionScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      onSurface: kAppB,
                      minimumSize: Size(double.infinity, bloque / 1.3),
                      backgroundColor: kAppB.withOpacity(0.65),
                      primary: kAppB,
                      side: const BorderSide(color: kColrPrim, width: 2)),
                  child: const Text("Configuración",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
                const Text("Juegos de beber. Con colegas, 2022")
              ]),
        ));
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ConfiguracionScreen()),
        );
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
                    ElevatedButton(
                      child: const Text('Cerrar'),
                      onPressed: () => Navigator.pop(context),
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
