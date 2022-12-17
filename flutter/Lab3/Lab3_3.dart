import 'dart:io';

void main(List<String> args) {
  print("Enter NO:");
  int n = int.parse(stdin.readLineSync()!);
  bool flag = true;

  for (int i = 2; i < n / 2; i++) {
    if (n % i == 0) {
      flag = false;
    }
  }
  if (flag) {
    print("Prime..");
  } else {
    print("Not Prime...");
  }
}
