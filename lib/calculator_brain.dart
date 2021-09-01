import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String caclulateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '高い';
    } else if (_bmi > 18.5) {
      return '普通';
    } else {
      return '低い';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '食べる量減らせ';
    } else if (_bmi > 18.5) {
      return 'ちょうどよい';
    } else {
      return 'もっと食べろ';
    }
  }
}
