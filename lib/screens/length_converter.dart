import 'package:flutter/material.dart';
import '../services/length_converter_logic.dart';
import 'converter_screen.dart';

class LengthConverter extends StatelessWidget {
  const LengthConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final lengthConvLogic = LengthConverterLogic();

    return ConverterScreen(
      title: 'Конвертер скорости',
      units: lengthConvLogic.getAvailableUnits(),
      convertFunction: (fromUnit, toUnit, amount) =>
          lengthConvLogic.convert(fromUnit, toUnit, amount),
    );
  }
}
