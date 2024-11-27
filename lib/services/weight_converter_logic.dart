class WeightConverterLogic {
  final Map<String, double> conversionRates = {
    'g': 1.0,
    'kg': 1000.0,
    't': 1000000.0,
  };

  double? convert(String fromUnit, String toUnit, double amount) {
    if (fromUnit == toUnit) {
      return amount;
    }

    if (!conversionRates.containsKey(fromUnit) ||
        !conversionRates.containsKey(toUnit)) {
      return null;
    }

    double amountInGrams = amount * conversionRates[fromUnit]!;
    return amountInGrams / conversionRates[toUnit]!;
  }

  List<String> getAvailableUnits() {
    return conversionRates.keys.toList();
  }
}
