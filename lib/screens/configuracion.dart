import 'package:con_colegas/screens/configQEMP.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfiguracionScreen extends StatefulWidget {
  const ConfiguracionScreen({Key? key}) : super(key: key);

  @override
  _ConfiguracionScreenState createState() => _ConfiguracionScreenState();
}

bool ynnhot = true;
bool ynnterrasa = false;
bool ynnrespetuoso = false;
bool ynnbarcelona = false;
bool ynnmanresa = false;
bool vorglobal = false;
bool qempfrasespers = false;

class _ConfiguracionScreenState extends State<ConfiguracionScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      getPrefs();
      getQEMPpref();
    });
    return Scaffold(
        appBar: AppBar(
            title: const Text("Configuración", style: TextStyle(fontSize: 25)),
            backgroundColor: Colors.orange,
            elevation: 0,
            centerTitle: true),
        body: SingleChildScrollView(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Yo nunca",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "\nSe pueden incluir frases de distintas temáticas. Se irán añadiendo progresivamente.\n",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          SwitchListTile(
                              title: const Text("'Yo nunca' Hot"),
                              value: ynnhot,
                              onChanged: (bool value) {
                                setState(() {
                                  ynnhot = value;
                                  savePrefs();
                                });
                              }),
                          SwitchListTile(
                              title: const Text("'Yo nunca' en Terrassa "),
                              value: ynnterrasa,
                              onChanged: (bool value) {
                                setState(() {
                                  ynnterrasa = value;
                                  savePrefs();
                                });
                              }),
                          SwitchListTile(
                              title: const Text("'Yo nunca' Respetuoso"),
                              value: ynnrespetuoso,
                              onChanged: (bool value) {
                                setState(() {
                                  ynnrespetuoso = value;
                                  savePrefs();
                                });
                              }),
                          SwitchListTile(
                              title: const Text("'Yo nunca' en Barcelona "),
                              value: ynnbarcelona,
                              onChanged: (bool value) {
                                setState(() {
                                  ynnbarcelona = value;
                                  savePrefs();
                                });
                              }),
                          SwitchListTile(
                              title: const Text("'Yo nunca' en Manresa "),
                              value: ynnmanresa,
                              onChanged: (bool value) {
                                setState(() {
                                  ynnmanresa = value;
                                  savePrefs();
                                });
                              }),
                          const Divider(),
                          const Text(
                            "Verdad o Reto",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "\nSe pueden añadir retos adicionales que son aplicables a todos los jugadores. Estos aparecen con el prefijo 'RETO GLOBAL:'.\n",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          SwitchListTile(
                              title:
                                  const Text("Retos para todos los jugadores"),
                              value: vorglobal,
                              onChanged: (bool value) {
                                setState(() {
                                  vorglobal = value;
                                  savePrefs();
                                });
                              }),
                          const Divider(),
                          const Text(
                            "Quién es más probable que...",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "\nSe pueden añadir frases personalizadas de forma adicional a las preguntas existentes, y configurarlas a continuación.\n",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          SwitchListTile(
                              title: const Text(
                                  "Frases personalizadas 'Quién es más probable'"),
                              value: qempfrasespers,
                              onChanged: (bool value) {
                                setState(() {
                                  qempfrasespers = value;
                                  savePrefs();
                                });
                              }),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ConfigQEMPScreen()),
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                      "Configurar frases personalizadas 'Quién es más probable'",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black)),
                                )),
                          ),
                          const Text(""),
                        ])))));
  }
}

Future getPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  ynnhot = prefs.getBool("ynnhot") ?? true;
  ynnterrasa = prefs.getBool("ynnterrasa") ?? false;
  ynnrespetuoso = prefs.getBool("ynnrespetuoso") ?? false;
  ynnbarcelona = prefs.getBool("ynnbarcelona") ?? false;
  ynnmanresa = prefs.getBool("ynnmanresa") ?? false;

  vorglobal = prefs.getBool("vorglobal") ?? false;

  qempfrasespers = prefs.getBool("qempfrasespers") ?? false;
}

Future savePrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("ynnhot", ynnhot);
  prefs.setBool("ynnterrasa", ynnterrasa);
  prefs.setBool("ynnrespetuoso", ynnrespetuoso);
  prefs.setBool("ynnbarcelona", ynnbarcelona);
  prefs.setBool("ynnmanresa", ynnmanresa);

  prefs.setBool("vorglobal", vorglobal);

  prefs.setBool("qempfrasespers", qempfrasespers);
}
