import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color(0xFF614385), Color(0xFF516395)),
      ),
    ),
  );
}
