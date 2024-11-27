// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/converter_screens_barrel.dart';

void main() {
  runApp(ConverterApp());
}

class ConverterApp extends StatelessWidget {
  const ConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Конвертер'),
      ),
      body: ListView(
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WeightConverter()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 0, 0),
              ),
              child: Text('Масса',
                  style:
                      TextStyle(fontSize: 24, color: const Color(0xFF212121))),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 123, 0),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TemperatureConverter()));
              },
              child: Text('Температура',
                  style:
                      TextStyle(fontSize: 24, color: const Color(0xFF212121))),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 238, 0),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MoneyConverter()));
              },
              child: Text('Валюта',
                  style: TextStyle(fontSize: 24, color: Color(0xFF212121))),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 21, 255, 0),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LengthConverter()));
              },
              child: Text('Длина',
                  style: TextStyle(fontSize: 24, color: Color(0xFF212121))),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 195, 255),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SpeedConverter()));
              },
              child: Text('Скорость',
                  style:
                      TextStyle(fontSize: 24, color: const Color(0xFF212121))),
            ),
          ),
        ],
      ),
    );
  }
}
