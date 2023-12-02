import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);
  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    double heightInMeters = height / 100.0;
    _bmi = weight / pow(heightInMeters, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi > 25) {
      return "Overweight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return 'Underweight';
    }
  }

  String getInterpolation() {
    if (_bmi > 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (_bmi >= 18.5) {
      return "You have a normal body. Good job!";
    } else {
      return 'You are lower than normal weight. You can eat a bit more.';
    }
  }
}
