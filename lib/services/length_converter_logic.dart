class LengthConverterLogic {
  final Map<String, double> conversionRates = {
    'sm': 1,
    'dm': 10,
    'm': 100,
    'dyim' : 2.54
  };

  double? convert(String fromUnit, String toUnit, double amount) {
    if (fromUnit == toUnit) {
      return amount;
    }

    if (!conversionRates.containsKey(fromUnit) ||
        !conversionRates.containsKey(toUnit)) {
      return null;
    }

    double amountInSm = amount * conversionRates[fromUnit]!;
    return amountInSm / conversionRates[toUnit]!;
  }

  List<String> getAvailableUnits() {
    return conversionRates.keys.toList();
  }
}
