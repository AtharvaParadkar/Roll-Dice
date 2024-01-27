import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:  GradientContainerWidget.bgcolor(),
      ),
    ),
  ); //* runapp is a function provided by flutter framework.
}
