import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter A:");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Enter B:");
  double b = double.parse(stdin.readLineSync()!);

  print("Maximum:${maxOfTwo(a, b)}");
  print("Maximum:${maxOfTwo(a)}");
}

double maxOfTwo(double a, [double b = 0]) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}
