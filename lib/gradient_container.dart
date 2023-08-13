
import 'package:first_app/dice_roller.dart';

import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> color;
  const GradientContainer({super.key, required List<Color> color}) : color = color;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
