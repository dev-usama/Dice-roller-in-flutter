import 'package:flutter/material.dart';
import 'package:flutter_course/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          Color.fromARGB(255, 48, 7, 118), Color.fromARGB(255, 24, 39, 124)),
    ),
  ));
}
