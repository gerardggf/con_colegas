import 'package:con_colegas/app/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OptionsDrawer extends StatelessWidget {
  const OptionsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Opciones',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text('Configuración'),
              onTap: () {
                context.pushNamed(Routes.settings);
              },
              trailing: const Icon(Icons.tune),
            ),
            ListTile(
              title: const Text('Contacto'),
              trailing: const Icon(Icons.person),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 280,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Text(
                                  "Terrassa, Barcelona. 2022.\n\nPara propuestas de frases o nuevos juegos, por favor contactad con el siguiente correo electrónico:\n\n gerard.ggf@gmail.com\n"),
                            ),
                            TextButton(
                              child: const Text(
                                'Cerrar',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              onPressed: () => context.pop(context),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
