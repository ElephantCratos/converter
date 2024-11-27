class MoneyConverterLogic {
  // За основу взят курс от 03.11.2024 07:31 UTC.
  // Доллар выступает как главная валюта для конвертации.
  final Map<String, double> conversionRates = {
    'USD': 1.0,
    'EUR': 0.92,
    'RUB': 97.86,
  };

  double? convert(String fromUnit, String toUnit, double amount) {
    if (fromUnit == toUnit) {
      return amount;
    }

    if (!conversionRates.containsKey(fromUnit) ||
        !conversionRates.containsKey(toUnit)) {
      return null;
    }

    double amountInUSD = amount * conversionRates[fromUnit]!;
    double convertedAmount = amountInUSD * conversionRates[toUnit]!;
    return convertedAmount;
  }

  List<String> getAvailableUnits() {
    return conversionRates.keys.toList();
  }
}
