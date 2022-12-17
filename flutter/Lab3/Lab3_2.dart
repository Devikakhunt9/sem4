import 'dart:io';

void main(List<String> args) {
  int mul = 1;
  print("Enter NO:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    mul *= i;
  }
  print("Answer:${mul}");
}
