import 'dart:io';

void main(List<String> args) {
  int rem, rev = 0;
  print("Enter NO:");
  int n = int.parse(stdin.readLineSync()!);
  while (n != 0) {
    rem = n % 10;
    rev = rev * 10 + rem;
    n = n ~/ 10;
  }

  print("Reverse:${rev}");
}
