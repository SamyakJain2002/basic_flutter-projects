// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/models/functioning.dart';

class CalcButton extends StatelessWidget {
  final input;
  final Color colour;
  const CalcButton({required this.input, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: TextButton(
        child: Text(
          input,
          style: TextStyle(
            fontSize: Provider.of<Calculation>(context).scientific ? 20 : 28,
            color: colour,
          ),
        ),
        onPressed: () {
          Provider.of<Calculation>(context, listen: false).buttonPressed(input);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color(0xffF7F7F7),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
    );
  }
}
