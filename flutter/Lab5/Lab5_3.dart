import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Radius:");
  double r = double.parse(stdin.readLineSync()!);
  Circle()
    ..area(r)
    ..periameter(r);
}

class Circle {
  double? r;
  void area(double r) {
    print("Area Of Circle:${3.14 * r * r}");
  }

  void periameter(r) {
    print("Parameter Of Circle:${2 * 3.14 * r}");
  }
}
