import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    double bmi = weight / pow(height / 100.0, 2);
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25)
      return "Overweight";
    else if (_bmi > 18.5)
      return "NORMAL";
    else
      return "Underweight";
  }

  String getInterpretation() {
    if (_bmi > 25)
      return "You have a heigher than normal body weight. Try to exercise more.";
    else if (_bmi > 18.5)
      return "You have a normal body weight. Good job!";
    else
      return "You have a lower than normal body weight. You can eat a bit more.";
  }
}
