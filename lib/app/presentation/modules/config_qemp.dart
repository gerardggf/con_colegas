import 'package:con_colegas/app/data/datos/datos_quienesmasprobable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants.dart';
import '../global/utils/get_qemp_pref.dart';

class SettingsQuienEsMasProbablePage extends StatefulWidget {
  const SettingsQuienEsMasProbablePage({Key? key}) : super(key: key);

  @override
  State<SettingsQuienEsMasProbablePage> createState() =>
      _SettingsQuienEsMasProbablePageState();
}

//FRASES PERSONALIZADAS PARA EL "QUIÉN ES MÁS PROBABLE QUE"

class _SettingsQuienEsMasProbablePageState
    extends State<SettingsQuienEsMasProbablePage> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      getQEMPpref();
      listaFrasesCustom;
    });
    return Scaffold(
        appBar: AppBar(
            title: const Text("Quién es más probable",
                style: TextStyle(fontSize: 17)),
            backgroundColor: Colors.orange,
            elevation: 0,
            centerTitle: true),
        body: SingleChildScrollView(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              onChanged: (texto) {
                                valor = texto;
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Quién es más probable que...',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: OutlinedButton(
                              onPressed: () {
                                saveQEMPpref();
                              },
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.primary,
                                padding: const EdgeInsets.all(10),
                                disabledForegroundColor:
                                    AppColors.secondary.withOpacity(0.38),
                                minimumSize: const Size(double.infinity, 40),
                                backgroundColor: AppColors.secondary,
                              ),
                              child: const Text(
                                  "Agregar frase personalizada QEMP",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                                "Las frases añadidas se mostraran aquí. Pulsa encima de una de las frases ya creadas para eliminarla."),
                          ),
                          Column(
                            children: [
                              for (var i in listaFrasesCustom)
                                ListTile(
                                    title: Text(i.toString()),
                                    trailing: const Icon(Icons.delete),
                                    onTap: () {
                                      listaFrasesCustom.remove(i);
                                      deleteOneQEMPpref();
                                    })
                            ],
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: OutlinedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text(
                                            "Borrar frases personalizadas"),
                                        content: const Text(
                                            "¿Quieres eliminar todas las frases personalizadas del 'Quién es más probable'?"),
                                        actions: [
                                          TextButton(
                                            child: const Text("Cancelar"),
                                            onPressed: () {
                                              context.pop(context);
                                              setState(() {
                                                listaFrasesCustom;
                                              });
                                              getQEMPpref();
                                            },
                                          ),
                                          TextButton(
                                            child: const Text("Sí"),
                                            onPressed: () {
                                              deleteAllQEMPpref();
                                              context.pop(context);
                                              setState(() {
                                                listaFrasesCustom;
                                              });
                                              getQEMPpref();
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              },
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.primary,
                                padding: const EdgeInsets.all(10),
                                disabledForegroundColor:
                                    AppColors.secondary.withOpacity(0.38),
                                minimumSize: const Size(double.infinity, 40),
                                backgroundColor: Colors.red,
                              ),
                              child: const Text("Borrar todas",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                            ),
                          ),
                        ])))));
  }

  Future saveQEMPpref() async {
    SharedPreferences customFrases = await SharedPreferences.getInstance();

    listaFrasesCustom = customFrases.getStringList('frasesCustomQEMP') ?? [];
    if (valor != "") {
      listaFrasesCustom.add(valor);
      var listaFrasesCustomString = listaFrasesCustom.cast<String>();

      customFrases.setStringList('frasesCustomQEMP', listaFrasesCustomString);
    }
    datosCustomQEMP(listaFrasesCustom);
    setState(() {
      listaFrasesCustom;
    });
  }

  Future deleteAllQEMPpref() async {
    SharedPreferences customFrases = await SharedPreferences.getInstance();

    customFrases.setStringList('frasesCustomQEMP', []);
    datosCustomQEMP(listaFrasesCustom);
    setState(() {
      listaFrasesCustom;
    });
  }

  Future deleteOneQEMPpref() async {
    SharedPreferences customFrases = await SharedPreferences.getInstance();

    var listaFrasesCustomString = listaFrasesCustom.cast<String>();
    customFrases.setStringList('frasesCustomQEMP', listaFrasesCustomString);
    datosCustomQEMP(listaFrasesCustom);
    setState(() {
      listaFrasesCustom;
    });
  }
}
