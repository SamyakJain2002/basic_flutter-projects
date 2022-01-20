import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:provider/provider.dart';
import 'package:calculator/models/functioning.dart';

class ScientificKeypad extends StatelessWidget {
  const ScientificKeypad({
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
                    input: 'π',
                    colour: Color(0xff45FBD9),
                  ),
                  CalcButton(
                    input: 'INV',
                    colour: Color(0xffEE9191),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    input:
                        Provider.of<Calculation>(context).inv ? 'acos' : 'cos',
                    colour: Colors.black,
                  ),
                  CalcButton(
                    input: Provider.of<Calculation>(context).inv ? '2^' : 'log',
                    colour: Colors.black,
                  ),
                  const CalcButton(
                    input: '(',
                    colour: Colors.black,
                  ),
                  const CalcButton(
                    input: ')',
                    colour: Colors.black,
                  ),
                  CalcButton(
                    input: Provider.of<Calculation>(context).inv
                        ? 'floor'
                        : 'ceil',
                    colour: const Color(0xffEE9191),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    input:
                        Provider.of<Calculation>(context).inv ? 'asin' : 'sin',
                    colour: Colors.black,
                  ),
                  CalcButton(
                    input:
                        Provider.of<Calculation>(context).inv ? 'atan' : 'tan',
                    colour: Colors.black,
                  ),
                  CalcButton(
                    input: Provider.of<Calculation>(context).inv ? 'cosh' : '√',
                    colour: Colors.black,
                  ),
                  CalcButton(
                    input:
                        Provider.of<Calculation>(context).inv ? 'sinh' : 'ln',
                    colour: Colors.black,
                  ),
                  const CalcButton(
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
                children: [
                  const CalcButton(
                    input: '7',
                    colour: Color(0xff40434B),
                  ),
                  const CalcButton(
                    input: '8',
                    colour: Color(0xff40434B),
                  ),
                  const CalcButton(
                    input: '9',
                    colour: Color(0xff40434B),
                  ),
                  CalcButton(
                    input:
                        Provider.of<Calculation>(context).inv ? 'tanh' : 'abs',
                    colour: Colors.black,
                  ),
                  const CalcButton(
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
                    input: 'e',
                    colour: Colors.black,
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
                    input: '^',
                    colour: Colors.black,
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
                    input: '00',
                    colour: Colors.black,
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
