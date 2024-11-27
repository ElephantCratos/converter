import 'package:flutter/material.dart';
import '../services/money_converter_logic.dart';
import 'converter_screen.dart';

class MoneyConverter extends StatelessWidget {
  const MoneyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final moneyConvLogic = MoneyConverterLogic();

    return ConverterScreen(
      title: 'Конвертер валют',
      units: moneyConvLogic.getAvailableUnits(),
      convertFunction: (fromUnit, toUnit, amount) =>
          moneyConvLogic.convert(fromUnit, toUnit, amount),
    );
  }
}
