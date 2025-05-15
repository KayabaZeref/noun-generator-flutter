import 'package:flutter/material.dart';
//import 'package:first_app/style_text.dart';
import 'package:first_app/change_text.dart';

var beginAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: TextChanger()),
    );
  }
}
