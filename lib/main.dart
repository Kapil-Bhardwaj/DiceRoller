// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
        home: Scaffold(
      body: GradientContainer(color: [
        Color.fromARGB(100, 214, 11, 241),
        Color.fromARGB(100, 0, 0, 0),
        Color.fromARGB(100, 68, 19, 204)
      ]),
    )),
  );
}
