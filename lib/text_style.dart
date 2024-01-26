import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({super.key});
  @override
  Widget build(context) {
    return const Text(
      'Hello World!!',
      style: TextStyle(
          color: Colors.yellow, fontSize: 30, fontStyle: FontStyle.italic),
    );
  }
}
