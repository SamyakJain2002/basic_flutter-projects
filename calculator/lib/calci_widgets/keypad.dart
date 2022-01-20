import 'package:flutter/material.dart';
import 'buttons.dart';

class KeyPad extends StatelessWidget {
  const KeyPad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF9F9F9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CalcButton(
                    input: 'AC',
                    colour: Color(0xff45FBD9),
                  ),
                  CalcButton(
                    input: '⌫',
                    colour: Color(0xff45FBD9),
                  ),
                  CalcButton(
                    input: '%',
                    colour: Color(0xff45FBD9),
                  ),
                  CalcButton(
                    input: '÷',
                    colour: Color(0xffEE9191),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CalcButton(
                    input: '7',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '8',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '9',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: 'x',
                    colour: Color(0xffEE9191),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CalcButton(
                    input: '4',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '5',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '6',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '−',
                    colour: Color(0xffEE9191),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CalcButton(
                    input: '1',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '2',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '3',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '+',
                    colour: Color(0xffEE9191),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CalcButton(
                    input: '⤢',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '0',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '.',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input: '=',
                    colour: Color(0xffEE9191),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
