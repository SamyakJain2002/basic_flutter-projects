import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final onPressed;
  final String title;
  BottomButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
            child: Text(
          title,
          style: KBottombuttonstyle,
        )),
        margin: EdgeInsets.only(top: 10),
        color: Color(0XFFEB1555),
      ),
    );
  }
}
