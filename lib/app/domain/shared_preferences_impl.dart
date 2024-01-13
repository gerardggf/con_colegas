import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants.dart';

class FrasesKits {
  FrasesKits._();

  static Future getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ynnhot = prefs.getBool("ynnhot") ?? false;
    ynnterrasa = prefs.getBool("ynnterrasa") ?? false;
    ynnrespetuoso = prefs.getBool("ynnrespetuoso") ?? false;
    ynnbarcelona = prefs.getBool("ynnbarcelona") ?? false;
    ynnmanresa = prefs.getBool("ynnmanresa") ?? false;

    vorglobal = prefs.getBool("vorglobal") ?? false;

    qempfrasespers = prefs.getBool("qempfrasespers") ?? false;
  }

  static Future savePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("ynnhot", ynnhot);
    prefs.setBool("ynnterrasa", ynnterrasa);
    prefs.setBool("ynnrespetuoso", ynnrespetuoso);
    prefs.setBool("ynnbarcelona", ynnbarcelona);
    prefs.setBool("ynnmanresa", ynnmanresa);

    prefs.setBool("vorglobal", vorglobal);

    prefs.setBool("qempfrasespers", qempfrasespers);
  }
}
