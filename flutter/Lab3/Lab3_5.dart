import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter String : ");
  String str = stdin.readLineSync()!;
  print("Reverse::${str.split("").reversed.join()}");
}
