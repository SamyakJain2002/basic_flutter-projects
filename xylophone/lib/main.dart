import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  void play(int number) {
    final player = AudioCache();
    player.play('assets_note$number.wav');
  }

  Expanded buildkey({Color color = Colors.black, int soundnumber = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play(soundnumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.amber, soundnumber: 1),
                buildkey(color: Colors.blue, soundnumber: 2),
                buildkey(color: Colors.deepOrangeAccent, soundnumber: 3),
                buildkey(color: Colors.teal, soundnumber: 4),
                buildkey(color: Colors.purpleAccent, soundnumber: 5),
                buildkey(color: Colors.greenAccent, soundnumber: 6),
                buildkey(color: Colors.redAccent, soundnumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
