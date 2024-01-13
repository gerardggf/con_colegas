import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/datos/datos_quienesmasprobable.dart';

List listaFrasesCustom = [];
var frasesCustom = "";
String valor = "";

Future getQEMPpref() async {
  SharedPreferences customFrases = await SharedPreferences.getInstance();

  listaFrasesCustom = customFrases.getStringList('frasesCustomQEMP') ?? [];
  datosCustomQEMP(listaFrasesCustom);
}
