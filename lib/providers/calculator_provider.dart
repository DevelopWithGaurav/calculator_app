import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider with ChangeNotifier {
  String validOperators = '/*-+';
  String validOperands = '0123456789';

  Parser expParser = Parser();

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
  set result(String value) {
    _result = value;
    notifyListeners();
  }

  void clearLast() {
    if (_inputExpression.isNotEmpty) {
      _inputExpression =
          _inputExpression.substring(0, _inputExpression.length - 1);
      // notifyListeners();
      calculate();
    } else {
      _result = '';
      notifyListeners();
    }
  }

  void calculate() {
    double calculatedResult = 0.0;

    if (_inputExpression.length > 2) {
      if (!validOperands.contains(_inputExpression[0]) ||
          !validOperands
              .contains(_inputExpression[_inputExpression.length - 1])) {
        // Fluttertoast.cancel();
        // Fluttertoast.showToast(msg: 'Invalid Expression');
      } else {
        try {
          Expression parsedExp = expParser.parse(_inputExpression);
          calculatedResult =
              parsedExp.evaluate(EvaluationType.REAL, ContextModel());

          _result = calculatedResult.toString();
        } catch (e) {
          log(e.toString());
        }
      }
    }
    notifyListeners();
  }
}
