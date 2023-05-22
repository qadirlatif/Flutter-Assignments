class Tipcalculator {
  int splits = 1;
  double bill;

  double tipPercentage = 0;
  int billValBeforeDecimal = 0;
  int billValAfterDecimal = 0;
  Tipcalculator(this.splits, this.bill, this.tipPercentage);
  double Bill(Tipcalculator calculator) {
    return double.parse(calculator.billValBeforeDecimal.toString() +
        "." +
        calculator.billValAfterDecimal.toString());
  }

  String totalamount(double bill, double tipPercentage) {
    return (bill + (bill * tipPercentage)).toString();
  }

  String perperson(double bill, double tipPercentage, int splits) {
    return ((bill + (bill * tipPercentage)) / splits).toString();
  }
}
