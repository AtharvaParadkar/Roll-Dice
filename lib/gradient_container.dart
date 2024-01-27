import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft; //*global variable
const endAlignment =
    Alignment.bottomRight; //* final variable will never receive new value
//* const variable is compile-time constant ie its value is determined when the code is compiled, its value will never change in lifetime.

class GradientContainerWidget extends StatelessWidget {
  //*custom widget
  const GradientContainerWidget(this.color1, this.color2,
      {super.key}); //*Need to use 'required' keyword while using the named argument

  //* Multiple constructor functions
  const GradientContainerWidget.bgcolor({super.key})
      : color1 = const Color.fromARGB(255, 88, 147, 249),
        color2 = const Color.fromARGB(255, 41, 73, 252);

  final Color color1, color2;

  @override //* overriding the method that is expected by statelesswidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
