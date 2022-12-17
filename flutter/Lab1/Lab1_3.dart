import 'dart:io';

void main(List<String> args) {
  print("Enter Temprature (Fehranhit):");
  double f = double.parse(stdin.readLineSync()!);
  double c = (f - 32) * (5 / 9);
  print("Temprature:${c}");

  print("Enter Temprature (Celcius):");
  double ctof = double.parse(stdin.readLineSync()!);
  double ftoc = ctof * 1.8000;
  print("Temprature:${ftoc}");
}
