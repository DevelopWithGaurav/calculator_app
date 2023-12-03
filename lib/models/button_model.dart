enum ActionType { operator, operand, equals, clearAll, clearLast }

class ButtonModel {
  final String label;
  final ActionType actionType;
  String? operatorSymbol;

  ButtonModel({
    required this.label,
    required this.actionType,
    this.operatorSymbol,
  });
}
