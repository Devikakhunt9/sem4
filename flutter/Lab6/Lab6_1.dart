import 'dart:io';

void main(List<String> args) {
  List<int> num = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Enter Elements:");
    num.add(int.parse(stdin.readLineSync()!));
  }
  num.sort();
  print("List:${num}");
}
