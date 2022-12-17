import 'dart:io';

void main(List<String> args) {
  print("Enter Distnce(Meter):");
  double m = double.parse(stdin.readLineSync()!);
  double feet = (m * 3.28084);
  print("Distance(Feet):${feet} ft");
}
