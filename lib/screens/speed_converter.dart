import 'package:flutter/material.dart';
import '../services/speed_converter_logic.dart';
import 'converter_screen.dart';

class SpeedConverter extends StatelessWidget {
  const SpeedConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final speedConvLogic = SpeedConverterLogic();

    return ConverterScreen(
      title: 'Конвертер скорости',
      units: speedConvLogic.getAvailableUnits(),
      convertFunction: (fromUnit, toUnit, amount) =>
          speedConvLogic.convert(fromUnit, toUnit, amount),
    );
  }
}
