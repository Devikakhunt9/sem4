import 'dart:io';

void main(List<String> args) {
  double interest(double p, double r, double n) {
    return ((p * r * n) / 100);
  }

  print("Enter P:");
  double p = double.parse(stdin.readLineSync()!);
  print("Enter R:");
  double r = double.parse(stdin.readLineSync()!);
  print("Enter N:");
  double n = double.parse(stdin.readLineSync()!);

  double i = interest(p, r, n);
  print("Simpal Intrest:${i}");
}
