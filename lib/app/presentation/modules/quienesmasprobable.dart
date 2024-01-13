import 'package:con_colegas/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:con_colegas/app/data/datos/datos_quienesmasprobable.dart';

class QuienEsMasProbableView extends StatefulWidget {
  const QuienEsMasProbableView({Key? key}) : super(key: key);

  @override
  State<QuienEsMasProbableView> createState() => _QuienEsMasProbableViewState();
}

class _QuienEsMasProbableViewState extends State<QuienEsMasProbableView> {
  @override
  Widget build(BuildContext context) {
    var frase = datosQuienesmasprobable().toString();

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quién es más probable",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          leading: const BackButton(color: Colors.white),
          backgroundColor: AppColors.primary,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "\n¿Quién es más probable que...\n",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              width: 300,
                              height: 200,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 194, 243, 247),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      spreadRadius: 6,
                                      blurRadius: 4,
                                      offset: const Offset(3, 3),
                                    )
                                  ],
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(17.0),
                                    child: Center(
                                      child: Text(
                                        frase,
                                        style: const TextStyle(
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              )),
                          const Divider(),
                          TextButton(
                              style: TextButton.styleFrom(
                                  fixedSize: const Size.fromHeight(60)),
                              onPressed: () => {
                                    setState(() {
                                      frase;
                                    })
                                  },
                              child: const Text("Siguiente",
                                  style: TextStyle(fontSize: 22))),
                          const Text(
                            "\nInstrucciones:\n",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                          const Text(
                            "Alguien lee la frase en voz alta y entre todos señaláis a la de tres a la persona con la que más identifiquéis con esta.",
                            style: TextStyle(fontSize: 10),
                          )
                        ])))));
  }
}
