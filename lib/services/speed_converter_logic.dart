class SpeedConverterLogic {
  final Map<String, double> conversionRates = {
    'km/h': 1.0,
    'm/s': 3.6,
    'mph': 1.60934,
  };

  double? convert(String fromUnit, String toUnit, double amount) {
    if (fromUnit == toUnit) {
      return amount;
    }

    if (!conversionRates.containsKey(fromUnit) ||
        !conversionRates.containsKey(toUnit)) {
      return null;
    }

    double amountInKmh = amount * conversionRates[fromUnit]!;
    return amountInKmh / conversionRates[toUnit]!;
  }

  List<String> getAvailableUnits() {
    return conversionRates.keys.toList();
  }
}
