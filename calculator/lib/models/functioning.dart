import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class Calculation extends ChangeNotifier {
  String equation = '';
  String result = '';
  bool scientific = false;
  bool inv = false;

  void buttonPressed(String input) {
    if (input == 'AC') {
      equation = '';
      result = '';
    } else if (input == '⌫') {
      if (equation.isNotEmpty) {
        equation = equation.substring(0, equation.length - 1);
        calculate();
      }
    } else if (input == '=') {
      try {
        String expression = equation;
        expression = expression.replaceAll('x', '*');
        expression = expression.replaceAll('√', 'sqrt');
        expression = expression.replaceAll('π', 'pi');
        expression = expression.replaceAll('÷', '/');
        expression = expression.replaceAll('−', '-');
        num eval = expression.interpret();
        result = '';
        equation = eval.toString();
      } catch (e) {
        result = 'Error';
      }
    } else if (input == '⤢') {
      scientific = !scientific;
    } else if (input == 'INV') {
      inv = !inv;
    } else {
      if (equation == '' || equation == '0') {
        equation = input;
      } else {
        if ((input == 'x' || input == '÷' || input == '+' || input == '−') &&
            (equation[equation.length - 1] == 'x' ||
                equation[equation.length - 1] == '÷' ||
                equation[equation.length - 1] == '−' ||
                equation[equation.length - 1] == '+')) {
          equation = equation.substring(0, equation.length - 1) + input;
        } else {
          equation = equation + input;
        }
      }
      calculate();
    }
    notifyListeners();
  }

  void calculate() {
    try {
      String expression = equation;
      expression = expression.replaceAll('x', '*');
      expression = expression.replaceAll('÷', '/');
      expression = expression.replaceAll('√', 'sqrt');
      expression = expression.replaceAll('π', 'pi');
      expression = expression.replaceAll('−', '-');
      num eval = expression.interpret();
      result = eval.toString();
    } catch (e) {
      result = '';
    }
  }
}
