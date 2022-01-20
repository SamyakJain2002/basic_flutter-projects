import 'package:flutter/material.dart';
import 'storybrain.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: Scaffold(
      body: Destini(),
    ),
  ));
}

StoryBrain story = StoryBrain();

class Destini extends StatefulWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  _DestiniState createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background.png'), fit: BoxFit.cover),
        border: Border.all(
          color: Colors.black,
          width: 0,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      child: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: Text(
                    story.getstory(),
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      story.nextstory(1);
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    primary: Colors.white,
                  ),
                  child: Text(
                    story.getchoice1(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Visibility(
                  visible: story.buttonshouldbevisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        story.nextstory(2);
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      primary: Colors.white,
                    ),
                    child: Text(
                      story.getchoice2(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
