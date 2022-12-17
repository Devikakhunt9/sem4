import 'dart:io';

void main(List<String> args) {
  print("Enter A:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter B:");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter C:");
  int c = int.parse(stdin.readLineSync()!);

  if (a > b) {
    if (a > c) {
      print("Maximum:${a}");
    } else {
      print("Maximum:${c}");
    }
  } else {
    if (b > c) {
      print("Maximum:${b}");
    } else {
      print("Maximum:${c}");
    }
  }
}
