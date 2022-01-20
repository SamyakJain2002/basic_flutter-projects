import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dice'),
          ),
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int l = 1;
  int r = 2;
  change() {
    setState(() {
      r = Random().nextInt(6) + 1;
      l = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset('image/dice$l.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset('image/dice$r.png'),
            ),
          ),
        ],
      ),
    );
  }
}
