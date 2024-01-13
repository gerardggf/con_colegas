import 'dart:math';

import '../../core/constants.dart';

List listadoVerdad = [
  "¿Te acostarías con algunxs de los presentes?",
  "¿Te gustan los pies?",
  "¿Qué es lo que más odias de la persona de tu izquierda?",
  "¿Tendrías un hijo con la persona de tu derecha?",
  "¿Cuál es la parte del cuerpo que le huele peor a la persona de tu izquierda?",
  "¿De este grupo, a quién te llevarías a una isla desierta?",
  "¿Qué es lo más vergonzoso que te ha pasado en la vida?",
  "¿Cuál fue el sueño más extraño que has tenido?",
  "¿Cuál es tu mayor secreto?",
  "Si hoy fuera tu último día de vida, ¿qué harías?",
  "De 0 a 10, ¿qué nota darías en general a la persona de tu derecha?",
  "¿Cuál fue el peor regalo que has recibido de alguien de los presentes?",
  "Si el mundo se acabara y pudieras salvar solo a una persona de los presentes para sobrevivir, ¿a quién salvarías?",
  "¿Te han traicionado alguna vez alguno de los presentes?",
  "¿Has mentido jugando a verdad o reto en algún momento?",
  "¿Cuál es tu técnica de seducción?",
  "¿Has tenido relaciones con alguien de este grupo?",
  "¿Alguna vez has dudado de tu orientación sexual?",
  "De este grupo, ¿a quién besarías antes?",
  "¿Has tenido algún sueño erótico con alguien de los presentes?",
  "¿Con qué dos personas de los presentes harías un trío?",
  "¿Qué es algo que nunca te has atrevido a pedir en la cama?",
  "¿Alguna vez has tenido que usar un anticonceptivo de emergencia?",
  "¿A quién le contaste tu última mentira?",
  "¿Cuándo fue la última vez que te rechazaron?",
  "¿Qué es lo peor que le has dicho a alguien?",
  "¿Alguna vez has engañado a tu pareja?",
  "¿Quién te cae peor de esta habitación y por qué?",
  "¿Qué tres animales elegirías para describir tu estilo sexual?",
  "¿Cuál ha sido la situación más vergonzosa de tu vida?",
  "¿Tendrías sexo con la persona de tu derecha?",
  "¿Con qué frecuencia te masturbas a la semana?",
  "¿Cuándo fue la última vez que lloraste?",
  "¿Con qué dos personas de las presentes compartirías la lotería?",
  "¿Besarías a alguna de las personas de tu izquierda y/o derecha?"
];
List listadoReto = [
  "Chúpale la parte del cuerpo que quieras a la persona de tu derecha",
  "Dale de beber a la persona de tu izquierda",
  "Busca la letra de una canción y cantala entera mientras sigue jugando la siguiente persona",
  "Lámele una parte del cuerpo a la persona de tu izquierda",
  "Bébete dos chupitos o un vaso entero de cerveza",
  "Hazle un baile erótico a la persona de tu derecha",
  "Da una vuelta en ropa interior por la calle.",
  "Sirve la bebida de todo el mundo durante toda la noche.",
  "No mires el móvil hasta que acabe el juego",
  "Deja que alguien del grupo lea tu último mensaje del WhatsApp.",
  "Tírale los tejos a un amigo y a ver cómo responde.",
  "Imita a alguien del grupo de forma ofensiva.",
  "Envíale un mensaje a tu última expareja.",
  "Llama a algún familiar o amigo para decirle que le quieres.",
  "Dale un beso a la persona de tu derecha.",
  "Bébete un trago de la bebida que tengas, levántate, pégate una colleja a ti mismo y vuélvete a sentar'",
  "Túmbate en el suelo encongido como un feto y chilla 'Me mueroooo'",
  "Métele un dedo en la boca a la persona de tu izquierda",
  "Dale un cabezazo a la persona de tu izquierda",
  "Susúrrale a la oreja a la persona de tu izquierda alguna cosa sin sentido",
  "Métele un dedo a la oreja a la persona de tu derecha",
  "Sácale un zapato a la persona de tu derecha y huélelo",
  "Coméntale al grupo con cara de preocupación la situación actual sobre el cambio climático",
  "Haz o di alguna cosa que no dirías o harías normalmente",
  "Repite lo que diga la persona de tu izquierda cada vez que hable hasta que se acabe el juego",
  "Cada 2 minutos aproximadamente imita el ruido de un animal hasta que se acabe el juego",
  "Levanta los dos brazos durante 5 minutos sin bajarlos mientras sigue jugando la siguiente persona",
  "Haz ruidos incómodos con la boca durante 2 minutos",
  "Muestra a los demás una parte de tu cuerpo que a simple vista no se vea",
  "Repitele a los demás todo el rato que a la próxima ronda tienes que hacer reto obligatorio y luego hazlo",
  "Muerde algo que tengas a menos de un metro de distancia",
  "Haz beatbox durante 30 segundos",
  "Sal a un lugar descubierto y di algo sin sentido en alto",
];

List listadoRetoGlobal = [
  "RETO GLOBAL: Que levante la mano quien se besaría con alguien de los presentes",
  "RETO GLOBAL: El jugador más pequeño tiene que actuar como un bebé,y el jugador más mayor como un anciano",
  "RETO GLOBAL: Hacedle la peineta a la última persona en decir la palabra 'Gazpacho'",
  "RETO GLOBAL: Dadle todos un beso donde queráis a la persona de vuestra izquierda",
  "RETO GLOBAL: Dadle todos un abrazo a la persona que está leyendo esta pregunta",
  "RETO GLOBAL: Jugad a una ronda del teléfono escacharrado",
  "RETO GLOBAL: Inventaros una frase cada persona para crear una historia que tenga un mínimo sentido",
  "RETO GLOBAL: Poneos de acuerdo todos y tocad una canción con partes de vuestro cuerpo",
  "RETO GLOBAL: Cuando alguien hable fuera de su turno, no le respondáis y miradle fijamente hasta que se calle"
];

List memV = [];
List memR = [];

// ignore: non_constant_identifier_names
datos_verdadoreto(paramVoR) {
  var listadoRetoSum = listadoReto;

  if (vorglobal == true) {
    listadoRetoSum = listadoReto + listadoRetoGlobal;
  }

  Random random = Random();
  int fraseRandom;

  if (paramVoR == "Verdad") {
    fraseRandom = random.nextInt(listadoVerdad.length);

    while (memV.contains(fraseRandom)) {
      fraseRandom = random.nextInt(listadoVerdad.length);
      if (memV.length >= listadoVerdad.length - 1) {
        memV.clear();
        break;
      }
    }
    memV.add(fraseRandom);

    return listadoVerdad[fraseRandom];
  }
  if (paramVoR == "Reto") {
    fraseRandom = random.nextInt(listadoRetoSum.length);

    while (memR.contains(fraseRandom)) {
      fraseRandom = random.nextInt(listadoRetoSum.length);
      if (memR.length >= listadoRetoSum.length - 1) {
        memR.clear();
        break;
      }
    }
    memR.add(fraseRandom);

    return listadoRetoSum[fraseRandom];
  }
}
