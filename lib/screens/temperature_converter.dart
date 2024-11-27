import 'package:flutter/material.dart';
import '../services/temperature_converter_logic.dart';
import 'converter_screen.dart';

class TemperatureConverter extends StatelessWidget {
  const TemperatureConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final temperatureConvLogic = TemperatureConverterLogic();

    return ConverterScreen(
      title: 'Конвертер температуры',
      units: const ['C', 'K', 'F'],
      convertFunction: (fromUnit, toUnit, amount) =>
          temperatureConvLogic.convert(fromUnit, toUnit, amount),
    );
  }
}
