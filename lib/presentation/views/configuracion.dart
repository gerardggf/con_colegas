import 'package:con_colegas/presentation/views/config_qemp.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';
import '../../domain/shared_preferences_impl.dart';

class ConfiguracionPage extends StatefulWidget {
  const ConfiguracionPage({Key? key}) : super(key: key);

  @override
  _ConfiguracionPageState createState() => _ConfiguracionPageState();
}

class _ConfiguracionPageState extends State<ConfiguracionPage> {
  String dropdownvalue = 'Español';
  var items = [
    'Català',
    'Español',
    'English',
  ];

  @override
  Widget build(BuildContext context) {
    setState(() {
      FrasesKits.getPrefs();
      getQEMPpref();
    });
    return Scaffold(
      appBar: AppBar(
          title: const Text("Configuración", style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.orange,
          elevation: 0,
          centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          const Text(
            "Yo nunca",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          DropdownButton(
            underline: const SizedBox(),
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.map(
              (String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              },
            ).toList(),
            onChanged: (String? newValue) {
              setState(
                () {
                  dropdownvalue = newValue!;
                },
              );
            },
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Yo nunca",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            "\nSe pueden incluir frases de distintas temáticas. Se irán añadiendo progresivamente.\n",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SwitchListTile(
            title: const Text("'Yo nunca' Hot"),
            value: ynnhot,
            onChanged: (bool value) {
              setState(
                () {
                  ynnhot = value;
                  FrasesKits.savePrefs();
                },
              );
            },
          ),
          SwitchListTile(
            title: const Text("'Yo nunca' en Terrassa "),
            value: ynnterrasa,
            onChanged: (bool value) {
              setState(
                () {
                  ynnterrasa = value;
                  FrasesKits.savePrefs();
                },
              );
            },
          ),
          SwitchListTile(
            title: const Text("'Yo nunca' Respetuoso"),
            value: ynnrespetuoso,
            onChanged: (bool value) {
              setState(
                () {
                  ynnrespetuoso = value;
                  FrasesKits.savePrefs();
                },
              );
            },
          ),
          SwitchListTile(
            title: const Text("'Yo nunca' en Barcelona "),
            value: ynnbarcelona,
            onChanged: (bool value) {
              setState(
                () {
                  ynnbarcelona = value;
                  FrasesKits.savePrefs();
                },
              );
            },
          ),
          SwitchListTile(
            title: const Text("'Yo nunca' en Manresa "),
            value: ynnmanresa,
            onChanged: (bool value) {
              setState(
                () {
                  ynnmanresa = value;
                  FrasesKits.savePrefs();
                },
              );
            },
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Verdad o Reto",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            "\nSe pueden añadir retos adicionales que son aplicables a todos los jugadores. Estos aparecen con el prefijo 'RETO GLOBAL:'.\n",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SwitchListTile(
            title: const Text("Retos para todos los jugadores"),
            value: vorglobal,
            onChanged: (bool value) {
              setState(
                () {
                  vorglobal = value;
                  FrasesKits.savePrefs();
                },
              );
            },
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Quién es más probable que...",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            "\nSe pueden añadir frases personalizadas de forma adicional a las preguntas existentes, y configurarlas a continuación.\n",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SwitchListTile(
            title: const Text("Frases personalizadas 'Quién es más probable'"),
            value: qempfrasespers,
            onChanged: (bool value) {
              setState(
                () {
                  qempfrasespers = value;
                  FrasesKits.savePrefs();
                },
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ConfigQuienEsMasProbablePage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Configurar frases personalizadas 'Quién es más probable'",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
