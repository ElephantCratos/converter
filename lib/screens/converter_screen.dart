import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConverterScreen extends StatefulWidget {
  final String title;
  final List<String> units;
  final Function(String, String, double) convertFunction;

  const ConverterScreen({
    super.key,
    required this.title,
    required this.units,
    required this.convertFunction,
  });

  @override
  ConverterScreenState createState() => ConverterScreenState();
}

class ConverterScreenState extends State<ConverterScreen> {
  String fromUnit;
  String toUnit;
  double? inputAmount;
  double? result;
  String? convertedUnit;

  ConverterScreenState()
      : fromUnit = '',
        toUnit = '';

  @override
  void initState() {
    super.initState();
    fromUnit = widget.units[0];
    toUnit = widget.units[1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,5}')),
              ],
              onChanged: (value) {
                setState(() {
                  inputAmount = double.tryParse(value);
                });
              },
              decoration: const InputDecoration(
                labelText: 'Введите значение',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Из:'),
                DropdownButton<String>(
                  value: fromUnit,
                  onChanged: (newValue) {
                    setState(() {
                      fromUnit = newValue!;
                    });
                  },
                  items: widget.units
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('В:'),
                DropdownButton<String>(
                  value: toUnit,
                  onChanged: (newValue) {
                    setState(() {
                      toUnit = newValue!;
                    });
                  },
                  items: widget.units
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (inputAmount != null) {
                  setState(() {
                    result =
                        widget.convertFunction(fromUnit, toUnit, inputAmount!);
                    convertedUnit = toUnit;
                  });
                }
              },
              child: const Text('Конвертировать'),
            ),
            const SizedBox(height: 16),
            Text(
              result != null
                  ? 'Результат: $result $convertedUnit'
                  : 'Введите значение и нажмите конвертировать',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
