import 'package:con_colegas/constants.dart';
import 'package:flutter/material.dart';
import 'package:con_colegas/domain/datos/datos_yonunca.dart';

class YoNuncaPage extends StatefulWidget {
  const YoNuncaPage({Key? key}) : super(key: key);

  @override
  _YoNuncaPageState createState() => _YoNuncaPageState();
}

class _YoNuncaPageState extends State<YoNuncaPage> {
  @override
  Widget build(BuildContext context) {
    var frase = datos_yonunca().toString();

    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Yo nunca",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            leading: const BackButton(color: Colors.white),
            backgroundColor: kColrPrim,
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
                            "\n\nA mí nunca / Yo nunca\n",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              width: 300,
                              height: 200,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 231, 194),
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
                            "Las personas que SÍ hayan hecho lo que indica la frase beben un trago de su bebida.",
                            style: TextStyle(fontSize: 10),
                          )
                        ])))));
  }
}
