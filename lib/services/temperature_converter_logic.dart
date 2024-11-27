class TemperatureConverterLogic {
  double convert(String fromUnit, String toUnit, double amount) {
    double celsius = _toCelsius(fromUnit, amount) ?? 0;
    return _fromCelsius(toUnit, celsius) ?? 0;
  }

  double? _toCelsius(String unit, double amount) {
    switch (unit) {
      case 'C':
        return amount;
      case 'K':
        return amount - 273.15;
      case 'F':
        return (amount - 32) * 5 / 9;
      default:
        return null;
    }
  }

  double? _fromCelsius(String unit, double celsius) {
    switch (unit) {
      case 'C':
        return celsius;
      case 'K':
        return celsius + 273.15;
      case 'F':
        return celsius * 9 / 5 + 32;
      default:
        return null;
    }
  }
}
