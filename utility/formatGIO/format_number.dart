import 'package:intl/intl.dart';

// #,###.## || #,###
String formatCurrencyCheckDecimal(double number) {
  String newNumber = '';
  if (number % 1 != 0) {
    print('มีทศนิยม');
    newNumber = NumberFormat.currency(customPattern: "#,###.##").format(number);
  } else {
    print('ไม่มีทศนิยม');
    newNumber = NumberFormat.currency(decimalDigits: 0, customPattern: "#,###")
        .format(number);
  }
  return newNumber;
}

//"#,###.##"
String formatCurrency(double number) {
  return NumberFormat.currency(customPattern: "#,###.##").format(number);
}
