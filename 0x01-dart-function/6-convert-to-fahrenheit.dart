List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map(
          (celcius) => double.parse(((celcius * 9)/5 + 32).toStringAsFixed(2))
  ).toList();
}