import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  //* 'State' is a generic value type therfore need to add <> & value passed between them should be class name.
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//* Using _ means that the class is private ie it will only be usable in this file.
//* Even if we import in other file will no be able to use it.

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 1;

  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [ 
        //*  While adding assets uncomment the assets part in pubspec.yml and add assets path.
        Image.asset('assests/images/dice-$diceRoll.png', width: 200),     
        const SizedBox(height: 20),                       
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
