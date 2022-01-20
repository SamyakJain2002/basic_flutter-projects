import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text('Magic ball'),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
      ),
    ),
  ));
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int s = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(
            () {
              s = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset('images/ball$s.png'),
      ),
    );
  }
}
