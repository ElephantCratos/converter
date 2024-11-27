import 'package:flutter/material.dart';
import '../services/weight_converter_logic.dart';
import 'converter_screen.dart';

class WeightConverter extends StatelessWidget {
  const WeightConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final weightConvLogic = WeightConverterLogic();

    return ConverterScreen(
      title: 'Конвертер скорости',
      units: weightConvLogic.getAvailableUnits(),
      convertFunction: (fromUnit, toUnit, amount) =>
          weightConvLogic.convert(fromUnit, toUnit, amount),
    );
  }
}
