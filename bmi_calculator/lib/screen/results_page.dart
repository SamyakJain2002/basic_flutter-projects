import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final String bmi;
  final String result;
  final String remarks;
  Result({required this.bmi, required this.remarks, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextstyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMITextstyle,
                    ),
                    Text(
                      remarks,
                      textAlign: TextAlign.center,
                      style: kBodyTextstyle,
                    ),
                  ],
                ),
                color: kActivecardcolor,
              )),
          Expanded(
            child: BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              title: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
