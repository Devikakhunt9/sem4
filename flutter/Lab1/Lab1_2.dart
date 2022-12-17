import 'dart:io';

void main(List<String> args) {
  print("Enter A:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter B:");
  int b = int.parse(stdin.readLineSync()!);
  print("Ans:${a + b}");
}
