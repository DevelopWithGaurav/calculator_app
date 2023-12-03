import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CalculatorProvider with ChangeNotifier {
  String validOperators = '/*-+';
  String validOperands = '0123456789';

  String _inputExpression = '';
  set inputExpression(String value) {
    _inputExpression = value;
    notifyListeners();
  }

  String get inputExpression {
    return _inputExpression;
  }

  String _result = '';
  String get result {
    return _result;
  }

  void clearLast() {
    if (_inputExpression.isNotEmpty) {
      _inputExpression =
          _inputExpression.substring(0, _inputExpression.length - 1);
      notifyListeners();
    }
  }

  void calculate() {
    double calculatedResult = 0.0;

    if (_inputExpression.length > 2) {
      if (!validOperands.contains(_inputExpression[0]) ||
          !validOperands
              .contains(_inputExpression[_inputExpression.length - 1])) {
        Fluttertoast.cancel();
        Fluttertoast.showToast(msg: 'Invalid Expression');
      } else {
        for (var i = 0; i < _inputExpression.length; i++) {
          if (validOperands.contains(_inputExpression[i])) {
            calculatedResult =
                calculatedResult + double.parse(_inputExpression[i]);
          } else if (validOperators.contains(_inputExpression[i])) {
            if (_inputExpression[i] == '+') {
              calculatedResult = calculatedResult + 0;
            }
          }
        }
      }
    }
  }
}
