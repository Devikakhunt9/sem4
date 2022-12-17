import 'dart:io';

void main(List<String> args) {
  print("Enter NO:");
  int n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("Positive...");
  } else {
    print("Negative..");
  }
}
