import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});

  @override
  Widget build(context) {
    return Text(
      "Flutter is Awesome!",
      style: TextStyle(
        fontSize: 40,
        color: Colors.orangeAccent,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
