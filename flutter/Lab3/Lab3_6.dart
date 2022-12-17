import 'dart:io';

void main(List<String> args) {
  int sum = 0, num;

  do {
    print("Enter NO:");
    num = int.parse(stdin.readLineSync()!);

    if (num > 0 && num % 2 == 0) {
      sum += num;
    }
    if (num < 0 && num % 2 != 0) {
      sum += num;
    }
  } while (num != 3);

  print("Answer:${sum}");
}
