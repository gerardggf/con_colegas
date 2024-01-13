import 'dart:math';

import '../../core/constants.dart';

//NO SUPERAR AL LONGIUTD DE LAS FRASES YA EXISTENTES

List listadoQEMP = [
  "Se muera antes",
  "Sea un fetichista de pies",
  "Tenga una doble vida",
  "Acabe en la cárcel",
  "Sea el más pringado",
  "Se muera solo",
  "Haga las mezclas de comida más extrañas",
  "Se case antes",
  "Se divorcie antes",
  "Tenga hijos antes",
  "Se haga famosx",
  "Abandone el grupo de amigxs",
  "Tenga una aventura con alguien mayor",
  "Sufra adicción a las drogas",
  "Sea infiel",
  "Le salve la vida a alguien",
  "Atropelle a alguien",
  "Se acueste con alguien de su mismo sexo",
  "Vuelva con su ex",
  "Empiece un rumor",
  "Se pelee con alguien hasta llegar a las manos",
  "Le sean infiel",
  "Se contagie de una enfermedad sexual",
  "Tenga los gustos más raros",
  "Cambie de sexo",
  "Desaparezca y nadie vuelva a saber nunca más de él/ella",
  "Se convierta en sacerdote",
  "Tenga las mayores desgracias a lo largo de su vida",
  "La líe gorda en los peores momentos",
  "Pierda dinero?",
  "Sea engañado/a por su pareja",
  "Sea un desgraciado a lo largo de su vida",
  "Huela la ropa interior de su pareja",
  "Se masturbe con más frecuencia",
  "Ligue utilizando bromas subidas de tono",
  "Le ponga nombre a sus genitales",
  "Quiera mearse encima de su pareja mientras mantienen relaciones",
  "Mate por dinero",
  "Se ría en un funeral",
  "Acabe en un psiquiátrico",
  "Le dé un ataque al corazón por su rutina",
  "Chantajee a alguien",
  "Sea un/a fuckboy/fuckgirl",
  "Cometa incesto",
  "No sepa interactuar socialmente",
  "Se ponga muy nerviosx por cualquier cosa primero",
  "Sea un/a friki",
  "Cante peor de todos",
  "Salga menos de casa",
  "Se enamora más rápido",
  "Come peor",
  "Vea telenovelas turcas",
  "Esté cansado/a siempre",
  "Sea el/la más graciosx",
  "Sea el más sociable",
  "Esté siempre haciendo cosas sin parar",
  "Esté siempre cachondo perdido",
  "Baile mejor",
  "Tenga más tolerancia al alcohol",
  "Sea el/la más maduro/a y racional",
  "Tenga más mala suerte",
  "Tenga más hijos",
  "Se haga rico",
  "Os deba más dinero de los presentes",
  "Sea el más hippie de este grupo"
];

List memQEMP = [];

var listadoQEMPfinal = listadoQEMP;

datosQuienesmasprobable() {
  Random random = Random();
  int fraseRandom = random.nextInt(listadoQEMPfinal.length);

  while (memQEMP.contains(fraseRandom)) {
    fraseRandom = random.nextInt(listadoQEMPfinal.length);
    if (memQEMP.length >= listadoQEMPfinal.length - 1) {
      memQEMP.clear();
      break;
    }
  }
  memQEMP.add(fraseRandom);

  return listadoQEMPfinal[fraseRandom];
}

datosCustomQEMP(listaFrasesCustom) {
  if (qempfrasespers == true) {
    listadoQEMPfinal = listadoQEMP + listaFrasesCustom;
  } else {
    listadoQEMPfinal = listadoQEMP;
  }
}
