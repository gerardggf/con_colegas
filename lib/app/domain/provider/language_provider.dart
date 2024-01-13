import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants.dart';

class LanguageProvider {
  LanguageProvider._();

  static Future getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    language = Locale(prefs.getString("language") ?? "es");
  }

  static Future saveLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("language", language.toString());
  }
}
