import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;
  IconContent({this.label = '', required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: kLabelstyle,
        ),
      ],
    );
  }
}
