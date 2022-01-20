import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  Calculator({required this.height, required this.weight});
  double _bmi = 0;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getRemarks() {
    if (_bmi > 25) {
      return 'You must exercise more';
    } else if (_bmi > 18.5) {
      return 'You should keep up your routine';
    } else {
      return 'You must pay attention to your diet';
    }
  }
}
