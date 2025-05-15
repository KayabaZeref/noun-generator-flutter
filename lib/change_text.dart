import 'package:flutter/material.dart';
import 'package:word_generator/word_generator.dart';

// use the word_generator package to generate random words
final wordGenerator = WordGenerator();

class TextChanger extends StatefulWidget {
  const TextChanger({super.key});

  @override
  State<TextChanger> createState() {
    return _TextChangerState();
  }
}

class _TextChangerState extends State<TextChanger> {
  String displayText = wordGenerator.randomNoun();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          displayText,
          style: TextStyle(
            fontSize: 40,
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: changeText,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Text("Press me!"),
        ),
      ],
    );
  }

  void changeText() {
    setState(() {
      // Change the text here
      displayText = wordGenerator.randomNoun();
    });
  }
}
