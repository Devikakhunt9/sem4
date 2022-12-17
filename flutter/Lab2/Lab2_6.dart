import 'dart:io';

void main(List<String> args) {
  int ans = 0;
  print("Enter NO:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter Opration:");
  String op = stdin.readLineSync()!;
  print("Enter NO:");
  int b = int.parse(stdin.readLineSync()!);

  if (op == '+') {
    ans = a + b;
    print("Answer:${ans}");
  } else if (op == '-') {
    ans = a - b;
    print("Answer:${ans}");
  } else if (op == '*') {
    ans = a * b;
    print("Answer:${ans}");
  } else {
    if (b != 0) {
      ans = a ~/ b;
      print("Answer:${ans}");
    } else {
      print("Can't divide by ZERO");
    }
  }
  while (true) {
    print("Enter Opration:");
    String op = stdin.readLineSync()!;

    if (op == '=') {
      print("Answer:${ans}");
      break;
    } else {
      print("Enter NO:");
      int b = int.parse(stdin.readLineSync()!);
      if (op == '+') {
        ans = ans + b;
        print("Answer:${ans}");
      } else if (op == '-') {
        ans = ans - b;
        print("Answer:${ans}");
      } else if (op == '*') {
        ans = ans * b;
        print("Answer:${ans}");
      } else if (op == '/') {
        if (b != 0) {
          ans = ans ~/ b;
          print("Answer:${ans}");
        } else {
          print("Can't divide by ZERO");
        }
      }
    }
  }
}
