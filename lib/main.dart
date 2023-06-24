import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void ChangeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset("images/dice$leftDiceNumber.png"),
                  onPressed: () {
                    ChangeDiceFace();
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                  onPressed: () {
                    ChangeDiceFace();
                  },
                ),
              ),
            ],
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text("Toss"),
          //   style: ButtonStyle(backgroundColor: Colors.),
          // ),
        ],
      ),
    );
  }
}
