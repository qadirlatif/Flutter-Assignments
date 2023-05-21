class Tipcalculator{
  int splits=1;
  double bill;
  double tipPercentage;
  Tipcalculator( this.splits, this.bill, this.tipPercentage);
  String  totalamount(double bill, double tipPercentage){
    return (bill+ (bill*tipPercentage)).toString();

  }
  String  perperson(double bill, double tipPercentage, int splits){
    return ((bill+(bill*tipPercentage))/splits).toString();

  }

}