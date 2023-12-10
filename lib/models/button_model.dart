enum ActionType { operator, operand, equals, clearAll, clearLast }

class ButtonModel {
  final String label;
  final ActionType actionType;
  String? operatorSymbol;
  bool useSVG;
  String? svgIcon;

  ButtonModel({
    required this.label,
    required this.actionType,
    this.operatorSymbol,
    this.useSVG = false,
    this.svgIcon,
  });
}
