import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants.dart';

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
        context.pushNamed(route);
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        minimumSize: Size(double.infinity, bloque),
        side: const BorderSide(color: AppColors.primary, width: 2),
      ),
      child: Text(
        label,
        style: const TextStyle(
            fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
