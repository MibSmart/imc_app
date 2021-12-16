import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;

  CalculatorBrain({required this.weight, required this.height});

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "GORDO";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "MAGRO";
    }
  }

  String getInterpretation() {
    return "";
  }
}
