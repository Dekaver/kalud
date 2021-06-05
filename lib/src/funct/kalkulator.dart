import 'dart:math';

int hoursLeft(wearRate, konstanta, faktor) {
  var hourleft = pow((wearRate / konstanta), 1 / faktor);

  int result = (hourleft / 100 ).round() * 100;
  return result;
}

double konstantaA(wearRate, operationHour, faktor) {
  var konstanta = wearRate / pow(operationHour, faktor);
  return konstanta;
}

int wearRate(double pengukuran, double standarLimit, double standarSize) {
  var wearrate =
      (standarSize - pengukuran) / (standarSize - standarLimit) *100;
  return wearrate.round();
}

main(List<String> args) {
  var c = wearRate(67.2, 64.9, 69.9);
  var a = konstantaA(c, 2500, 2);
  var b = hoursLeft(100, a, 2);
  print(a);
  print(b);
  print(c);
}
