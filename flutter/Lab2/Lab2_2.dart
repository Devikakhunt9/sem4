import 'dart:io';

void main(List<String> args) {
  print("Enter A:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter B:");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter op:");
  String op = stdin.readLineSync()!;

  if (op == '+') {
    print("Answer:${a + b}");
  } else if (op == '-') {
    print("Answer:${a - b}");
  } else if (op == '*') {
    print("Answer:${a * b}");
  } else {
    if (b != 0) {
      print("Answer:${a / b}");
    } else {
      print("Can't divide by ZERO");
    }
  }

  //using only if

  if (op == '+') {
    print("Answer:${a + b}");
  }
  if (op == '-') {
    print("Answer:${a - b}");
  }
  if (op == '*') {
    print("Answer:${a * b}");
  }
  if (op == '/') {
    if (b != 0) {
      print("Answer:${a / b}");
    } else {
      print("Can't divide by ZERO");
    }
  }

  //using switch....case

  switch (op) {
    case '+':
      print("Answer:${a + b}");
      break;
    case '-':
      print("Answer:${a - b}");
      break;
    case '*':
      print("Answer:${a * b}");
      break;
    case '/':
      if (b != 0) {
        print("Answer:${a / b}");
      } else {
        print("Can't divide by ZERO");
      }
      break;
  }
}
