import 'dart:io';

void main(List<String> args) {
  while (true) {
    stdout.write(
        "Enter which one u calclulated:\n1.Circle:\n2.Triangle:\n3.Square:\n4.More than one:\n5.Exit:");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      stdout.write("Enter Radius:");
      double r = double.parse(stdin.readLineSync()!);
      area(r: r);
    } else if (choice == 2) {
      stdout.write("Enter Base:");
      double b = double.parse(stdin.readLineSync()!);
      stdout.write("Enter Height:");
      double h = double.parse(stdin.readLineSync()!);
      area(b: b, h: h);
    } else if (choice == 3) {
      stdout.write("Enter Length:");
      double l = double.parse(stdin.readLineSync()!);
      area(l: l);
    } else if (choice == 4) {
      stdout.write(
          "\nEnter which u selected:\n1.circle or Triangle:\n2.Triangle or Square:\n3.Circle and Square:\n4.All:");
      int ch = int.parse(stdin.readLineSync()!);
      if (ch == 1) {
        stdout.write("Enter Radius:");
        double r = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Base:");
        double b = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Height:");
        double h = double.parse(stdin.readLineSync()!);

        area(r: r, b: b, h: h);
      } else if (ch == 2) {
        stdout.write("Enter Base:");
        double b = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Height:");
        double h = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Length:");
        double l = double.parse(stdin.readLineSync()!);
        area(l: l, b: b, h: h);
      } else if (ch == 3) {
        stdout.write("Enter Radius:");
        double r = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Length:");
        double l = double.parse(stdin.readLineSync()!);
        area(l: l, r: r);
      } else {
        stdout.write("Enter Radius:");
        double r = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Base:");
        double b = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Height:");
        double h = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Length:");
        double l = double.parse(stdin.readLineSync()!);
        area(r: r, l: l, b: b, h: h);
      }
    } else if (choice == 5) {
      break;
    } else {
      print("Please Select Correct One.");
      break;
    }
  }
}

void area({double? r, double? l, double? h, double? b}) {
  if (r != null && b == null && h == null && l == null) {
    print("Area Of Circle:${3.14 * r * r}\n");
  } else if (r == null && b != null && h != null && l == null) {
    print("Area Of Triangle:${(1 / 2) * b * h}\n");
  } else if (r == null && b == null && h == null && l != null) {
    print("Area Of Square:${l * l}\n");
  } else if (r != null && h != null && b != null && l == null) {
    print(
        "Area of Circle:${3.14 * r * r} \nArea Of Square:${(1 / 2) * h * b}\n");
  } else if (r == null && h != null && b != null && l != null) {
    print("Area Of Triangle:${(1 / 2) * h * b} \n Area Of Square:${l * l}\n");
  } else if (r != null && h == null && b == null && l != null) {
    print("Area Of Circle:${3.14 * r * r} \nArea Of Square:${l * l}\n");
  } else if (r != null && h != null && b != null && l != null) {
    print(
        "Area of Circle:${3.14 * r * r} \nArea of Triangle:${(1 / 2) * h * b} \nArea of Square:${l * l}\n");
  }
}
