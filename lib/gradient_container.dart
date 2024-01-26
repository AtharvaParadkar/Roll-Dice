import 'package:flutter/material.dart';
import 'package:first_app/text_style.dart';

var startAlignment = Alignment.topLeft;       //*global variable
final endAlignment = Alignment.bottomRight;   //* final variable will never receive new value

class GradientContainerWidget extends StatelessWidget {   //*custom widget
  const GradientContainerWidget({super.key});

  @override //* overriding the method that is expected by statelesswidget
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: const [Colors.indigo, Colors.blue],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: TextStyleWidget(),
      ),
    );
  }
}
