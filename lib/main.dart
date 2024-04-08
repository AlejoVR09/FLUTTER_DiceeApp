import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const MyWidget(),
      ),
    ),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void numbers() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          numbers();
                        })
                      },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Image.asset('images/dice$leftDiceNumber.png'))),
          Expanded(
              child: ElevatedButton(
            onPressed: () => {
              setState(() {
                numbers();
              })
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ))
        ],
      ),
    );
  }
}
