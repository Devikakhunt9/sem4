import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Enter ur weight(Pound)");
  double pWeight = double.parse(stdin.readLineSync()!);
  print("Enter ur Height(Inches)");
  double iHeight = double.parse(stdin.readLineSync()!);

  double kgWeight = pWeight * 0.45359237;
  double mHeight = iHeight * 0.254;
  double bmi = kgWeight / (pow(mHeight, 2));

  print("BMI:${bmi}");
}
