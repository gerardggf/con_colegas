import 'dart:math';
import 'package:con_colegas/presentation/views/configuracion.dart';

List listadoYNN = [
  "Me he comido un moco",
  "Se me ha caido el móvil al váter",
  "Me he metido en una pelea a puñetazos",
  "He visto Titanic entera",
  "He grabado un video de mí mismo cantando o bailando",
  "Me he sentado en la ducha a llorar",
  "He robado en una tienda de algún amigo o familiar de un amigo",
  "Pensé que un personaje de dibujos animados fuera atractivo",
  "He conocido a alguien famoso",
  "He acosado al novio/novia de un ex en las redes sociales",
  "Me han dejado encerrado en una habitación",
  "Me han dicho que tengo mal aliento",
  "He tenido diarrea en la casa de un amigo",
  "Me he tropezado en público",
  "Me he/han cortado mal el pelo y me he puesto a llorar",
  "He fingido tener novio o novia",
  "He sido rechazado por alguien que me gusta",
  "He olvidado el cumpleaños de un amigo",
  "He dudado de mi orientación sexual",
  "He contado un secreto que se suponía que debía mantener",
  "He salido con más de una persona a la vez",
  "Me he hecho amigo de un ex",
  "He tenido una cita solo para hacer daño a otra persona",
  "Le he dicho el nombre de mi ex a mi pareja",
  "He regalado flores sólo para conseguir sexo",
  "Le he querido meter un puñetazo a alguien de los presentes",
  "Le he roto el corazón a alguien",
  "He intentado ligar con el rollo de un amigo mío",
  "He deseado que un amigo rompiera con su pareja",
  "Me he sentido atraído por un familiar cercano de un amigo",
  "He hecho la cobra",
  "Me han hecho la cobra",
  "He mentido en este 'Yo nunca'",
  "He ido a trabajar borracho",
  "He consumido drogas",
  "He tenido una época vegetariana o vegana.",
  "He mentido a mis amigos",
  "Me ha atropellado una bicicleta o patinete",
  "Me he atragantado en un restaurante",
  "Me he olvidado del cumpleaños de algún amigo",
  "Me he hecho un tauaje y se me ha curado mal",
  "He dejado a alguien en una cita",
  "He tenido una multa por exceso de velocidad",
  "He ghosteado a alguien",
  "He mentido para no ir a trabajar",
  "He dado un nombre falso",
  "He dejado a alguien por mensaje de texto",
  "Me he enfermado en el transporte público.",
  "Le he mentido a alguien en esta habitación.",
  "Le he enviado un mensaje de texto a un ex de la nada.",
  "He mentido en una aplicación de citas.",
  "Me han negado la entrada a un club",
  "Me han echado de un bar o club",
  "Yo he salido con la ex de un amigo",
  "He dicho 'te amo' cuando no lo decía en serio",
  "Me han asaltado",
  "Me he roto un hueso",
  "He besado a una celebridad",
  "He gastado más de 100€ en una noche de fiesta",
  "He pillado a mis padres teniendo sexo.",
  "He pretendido ser otra persona",
  "He ignorado a alguien que conocía en público.",
  "He arruinado una prenda de ropa que le presté a un amigo.",
  "Me he colado en un festival o club",
  "He mentido en este juego",
  "He orinado en la via pública",
  "He mentido sobre besar a alguien",
  "Me he hecho un tatuaje del que me arrepienta",
  "He contado el secreto de alguien",
  "Me ha gustado el padre de un amigo",
  "He vuelto a regalar un regalo que no quería",
  "He creado un Instagram falso",
  "He fingido llorar para conseguir algo",
  "Me he fumado un porro"
];
List listadoYNNhot = [
  "He visto una película porno entera",
  "Yo nunca ido a la cama con un desconocido.",
  "Me he masturbado en casa de un amigo",
  "Me he acostado con alguien que me dobla la edad",
  "He eliminado mi historial de navegación",
  "He jugado al strip poker",
  "He sido juguetón con alguna comida",
  "Me he querido acostar con ninguno de los presentes",
  "Me han / He practicado sexo anal",
  "He sido pillado masturbándome",
  "Me he acostado con alguien del mismo sexo",
  "Me he acostado con mi mejor amigo/a",
  "He enviado fotos desnudo/a a un amigo/a",
  "Me han esposado a la cama",
  "Me ha gustado el BDSM",
  "Me he lesionado teniendo relaciones sexuales",
  "Me he masturbado con mi pareja en el cine",
  "Me he excitado estudiando y me he tenido que masturbar",
  "He usado bolas chinas",
  "He tenido sexo en la calle",
  "Me he acostado con alguien sin tomar precauciones",
  "He tenido un gatillazo",
  "Yo nunca he hecho o recibido un baile erótico.",
  "He chupado los pies de nadie",
  "Me he liado con alguien de este grupo",
  "He tenido un romance con una persona casada",
  "He tenido una sesión de sexo de más de cuatro horas",
  "Me he tragado nada que no volvería a tragarme voluntariamente",
  "Me he acostado con más de 10 personas en mi vida",
  "Me he masturbado pensando en alguien de los presentes",
  "He usado una fruta o una verdura para darme placer",
  "He tenido una lesión fornicando",
  "He hecho videos subidos de tono",
  "He pillado a un familiar masturbándose",
  "Lo he hecho en la playa",
  "He besado al hermano de un amigo",
  "He experimentado con artículos del hogar durante el sexo",
  "Me ha dado una arcada practicando sexo oral",
  "He dicho/ me han dicho que era por el otro agujero",
  "He tenido sexo en un lugar público.",
  "He enviado un mensaje obsceno a la persona equivocada",
  "He dicho el nombre equivocado en la cama",
  "Me he acostado con alguien cuyo nombre no sé",
  "He tenido un trío",
  "He fingido un orgasmo",
  "Me he acostado con un compañero de trabajo.",
  "He vuelto con un ex",
  "He tenido un sueño erótico con alguien de esta habitación",
  "He tenido un sueño erótico con alguien que alguien de aquí conozca",
  "He hecho un juego de roles en la cama.",
  "Le he chupado los dedos de los pies a mi pareja",
  "He buscado posiciones sexuales en Google",
  "He usado esposas o algo similar",
  "He enviado una foto o un video completamente desnudo",
];
List listadoYNNterrasa = [
  "He colado una cerveza en La Repu",
  "He hecho el paso de baile prohibido en la República o PickWick",
  "Me he tirado al suelo porque me encontraba muy mal",
  "Me han robado en la Rasa",
  "He visto una pelea en la Rasa",
  "He llegado a ir al Mojito del Parc Vallés",
  "Me ha dado miedo ir por la noche por el Parque de Vallparadís",
  "He conocido la existencia del barrio del Poblenou de Terrassa",
  "Llegué a conocer y saludar por la calle al Matraka",
  "He acabado en coma etílico en el Jove de Terrassa",
  "He odiado Sabadell",
  "Me he colado en el parc de Sant Jordi por la noche",
  "He subido la Mola más de 10 veces en toda mi vida",
  "He aguantado la respiración en el baño del Bar Reina Victoria",
  "Me he recorrido el parque de Vallparadís entero",
  "He odiado el Viandox",
  "He visto como robaban el niño Jesús del pesebre",
  "He subido a cenar en el restaurante de la Mola en verano",
  "Me he bañado en el Llac Petit",
  "He ganado algún premio importante en la bolera del Parc Vallés",
  "Me he quejado de que Terrassa sean tres zonas y Sabadell dos",
];

List listadoYNNrespetuoso = [
  "He respetado a mis amigos",
  "He querido la paz en el mundo",
  "No he bajado la tapa del WC",
  "He empezado el primer plato sin esperar a los demás",
  "He velado por la seguridad de mis compañeros en todo momento",
  "He ayudado a una abuela a cruzar la calle",
  "He ayudado al prójimo",
  "He hecho un voluntariado o colaborado con una ONG",
  "He hecho una donación significativa a una buena causa",
];
List listadoYNNbarcelona = [
  "He ido al Patatas Sultán",
  "He entrado al Nevermind solo para mear",
  "Me he comido los nachos del Mojito Rock",
  "He acabado muy mal ya en la previa para entrar a Razz",
  "He olido a meado en ninguna parte de Raval o el barrio Gótico",
  "Me ha venido a hablar alguien del MACBA",
  "Me he perdido para coger el metro",
  "He odiado a la Renfe",
  "He querido vivir en el barrio de Gracia",
  "Me he cansado de ver guiris en la Barceloneta",
  "He ido a la churrería de Marina al salir de fiesta",
  "He caminado más de 1 hora de un punto a otro de la ciudad",
  "Me han ofrecido droga en las Ramblas de Barcelona",
  "He ido a tomar algo en un bar y era un engañaguiris (muy caro)",
  "He hecho botellón en la plaza del Sol o del Diamant",
  "Me he chocado con un skater en la plaza del MACBA",
  "Se me ha parado algún desconocido a hablarme en la plaza Reial",
  "Me he cruzado la Diagonal de Barcelona entera",
];
List listadoYNNmanresa = [
  "He desayunado en el Toni's/ churreria de la pl. Espanya volviendo de fiesta",
  "He ido a fumar/beber en el Parc de la Seu",
  "He cantado a pleno pulmón la canción del Correfoc",
  "Le he dado un beso a la estatua de la Plana de l'Om",
  "Me he parado a hablar con el Jordi 'Limonero' por el Passeig",
  "He meado en la calle durante FM",
  "He hablado con el Fifty",
  "He ido a ver el bàsquet en el Congost",
  "Me he sentado en las escaleras de Crist Rei",
  "He ido de Coco a Stroika la misma noche",
  "He ido al Castell de Puigterrà en horario lectivo",
  "Me han parados Testigos de jehová por el Passeig",
  "He ido a hacer 'guarradas' en el párking del parc de l'Agulla",
  "He quedado para ir a hacer los deberes al Abat",
  "He pasado el dia encerrado/a en la BCUM estudiando",
  "He hecho una story de Montserrat desde el berenador del Parc de l'Àguila",
  "He hecho una guerra de colores en el Toni's",
  "He acabado sin camiseta el último dia de la FM",
  "He ido a Andorra con la familia por la fiesta de la Llum",
  "He subido a Collbaix",
  "He ido a la Carpa del Riu",
  "Me he sentado en las sillas del passeig",
  "He encontrado sitio en la Ítaca del Kursaal",
  "Me han robado por la calle",
  "He dicho que 'no hay nada que hacer en Manresa"
];

List memynn = [];
var listados = [];

// ignore: non_constant_identifier_names
datos_yonunca() {
  Random random = Random();
  var hot = [];
  var terrasa = [];
  var respetuoso = [];
  var barcelona = [];
  var manresa = [];

  if (ynnhot == true) {
    hot = listadoYNNhot;
  }
  if (ynnterrasa == true) {
    terrasa = listadoYNNterrasa;
  }
  if (ynnrespetuoso == true) {
    respetuoso = listadoYNNrespetuoso;
  }
  if (ynnbarcelona == true) {
    barcelona = listadoYNNbarcelona;
  }
  if (ynnmanresa == true) {
    manresa = listadoYNNmanresa;
  }

  listados = listadoYNN + hot + terrasa + respetuoso + barcelona + manresa;

  int fraseRandom = random.nextInt(listados.length);

  while (memynn.contains(fraseRandom)) {
    fraseRandom = random.nextInt(listados.length);
    if (memynn.length >= listados.length - 1) {
      memynn.clear();
      break;
    }
  }
  memynn.add(fraseRandom);

  return listados[fraseRandom];
}
