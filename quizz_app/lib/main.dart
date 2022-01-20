import 'package:flutter/material.dart';
import 'quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizbrain = QuizBrain();
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Quiz(),
      ),
    ),
  ));
}

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> symbol = [];
  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "End of Quiz",
      desc: "You have reached the end of quiz.",
    ).show();
  }

  void checkanswer(bool selectedanswer) {
    setState(() {
      if (quizbrain.isfinished()) {
        _onBasicAlertPressed(context);
        quizbrain.reset();
        symbol.clear();
      } else {
        if (selectedanswer == quizbrain.getans()) {
          symbol.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          symbol.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizbrain.nextques();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                quizbrain.getques(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {
                checkanswer(true);
              },
              child: Text(
                'True',
                style: TextStyle(fontSize: 20),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green, primary: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {
                checkanswer(false);
              },
              child: Text(
                'False',
                style: TextStyle(fontSize: 20),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, primary: Colors.white),
            ),
          ),
        ),
        Row(
          children: symbol,
        )
      ],
    );
  }
}
