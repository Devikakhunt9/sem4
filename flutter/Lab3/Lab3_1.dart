import 'dart:io';

void main(List<String> args) {
  print("Enter NO:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter NO:");
  int b = int.parse(stdin.readLineSync()!);

  for (int i = a; i < b; i++) {
    if (a % 2 == 0 && a % 3 != 0) {
      print(a);
    }
    a++;
  }
}
