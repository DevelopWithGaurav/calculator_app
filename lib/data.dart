import 'package:calculator_app/generated/assets.dart';

import 'models/button_model.dart';

List<ButtonModel> buttons = [
  ButtonModel(
    label: 'AC',
    actionType: ActionType.clearAll,
  ),
  ButtonModel(
    label: '()',
    actionType: ActionType.operator,
    operatorSymbol: '()',
  ),
  ButtonModel(
    label: 'C',
    actionType: ActionType.clearLast,
    useSVG: true,
    svgIcon: Assets.svgClearLast,
  ),
  ButtonModel(
    label: '/',
    actionType: ActionType.operator,
    operatorSymbol: '/',
  ),
  ButtonModel(
    label: '7',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '8',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '9',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '*',
    actionType: ActionType.operator,
    operatorSymbol: '*',
  ),
  ButtonModel(
    label: '4',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '5',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '6',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '-',
    actionType: ActionType.operator,
    operatorSymbol: '-',
  ),
  ButtonModel(
    label: '1',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '2',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '3',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '+',
    actionType: ActionType.operator,
    operatorSymbol: '+',
  ),
  ButtonModel(
    label: '0',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '.',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '00',
    actionType: ActionType.operand,
  ),
  ButtonModel(
    label: '=',
    actionType: ActionType.equals,
  ),
];
