import 'package:con_colegas/constants.dart';
import 'package:flutter/material.dart';
import 'package:con_colegas/domain/datos/datos_verdadoreto.dart';

class VerdadORetoPage extends StatefulWidget {
  const VerdadORetoPage({Key? key}) : super(key: key);

  @override
  _VerdadORetoPageState createState() => _VerdadORetoPageState();
}

class _VerdadORetoPageState extends State<VerdadORetoPage> {
  var paramVoR = "";
  var fraseVoR = "\nPulsa 'Verdad' o 'Reto' para empezar";
  var colorVoR = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Verdad o reto",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          leading: const BackButton(color: Colors.white),
          backgroundColor: kColrPrim,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          paramVoR = "Verdad";
                          colorVoR = Colors.green;
                          setState(() {
                            fraseVoR = datos_verdadoreto(paramVoR);
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            foregroundColor: kAppB,
                            padding: const EdgeInsets.all(15),
                            disabledForegroundColor: kAppB.withOpacity(0.38),
                            minimumSize: const Size(double.infinity, 70),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: kColrPrim, width: 2)),
                        child: const Text(
                          "Verdad",
                          style: TextStyle(fontSize: 25, color: Colors.green),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Column(children: <Widget>[
                          const Text("\n"),
                          Text(
                            paramVoR,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: colorVoR),
                          ),
                          const Text(
                            "\n",
                            style: TextStyle(fontSize: 5),
                          ),
                          Center(
                              child: Text(
                            fraseVoR,
                            style: const TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ))
                        ]),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          paramVoR = "Reto";
                          colorVoR = Colors.red;
                          setState(() {
                            fraseVoR = datos_verdadoreto(paramVoR);
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            foregroundColor: kAppB,
                            padding: const EdgeInsets.all(15),
                            disabledForegroundColor: kAppB.withOpacity(0.38),
                            minimumSize: const Size(double.infinity, 70),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: kColrPrim, width: 2)),
                        child: const Text(
                          "Reto",
                          style: TextStyle(fontSize: 25, color: Colors.red),
                        ),
                      ),
                      Column(children: const <Widget>[
                        Text(
                          "\n\nInstrucciones:\n",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        Text(
                          "Si escoges verdad, te toca responder la pregunta de forma sincera.\nSi escoges reto, te tocar?? hacer lo que diga la frase sin decirlo en voz alta, para que los dem??s no sepan de qu?? se trata.",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "Si se tiene activada la opci??n de 'Retos para todos los jugadores', estos si, hay que leerlos en voz alta.",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "\n* Recuerda que para los retos normales no puedes leer la frase en voz alta.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ])
                    ],
                  ))),
        ));
  }
}
