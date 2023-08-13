import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
const DiceRoller({super.key});
  @override 
  State<DiceRoller> createState(){
      return __DiceRollerState();
      }
}

class __DiceRollerState extends State<DiceRoller> {

 var diceRoll = 2;

 void rollDice() {
    // ...
    
    setState(() {
      diceRoll = randomizer.nextInt(6)+1;
    });
  }


  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$diceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 27),
                ),
                child: const Text("Roll Dice")),
          ],
        );
  }
}