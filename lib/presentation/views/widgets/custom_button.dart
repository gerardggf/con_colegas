import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.route});

  final String label;
  final String route;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final bloque = height / 10;

    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        minimumSize: Size(double.infinity, bloque),
        side: const BorderSide(color: kColrPrim, width: 2),
      ),
      child: Text(
        label,
        style: const TextStyle(
            fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
