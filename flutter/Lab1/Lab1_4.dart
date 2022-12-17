import 'dart:io';

void main(List<String> args) {
  print("Enter Marks:");
  int s1 = int.parse(stdin.readLineSync()!);
  print("Enter Marks:");
  int s2 = int.parse(stdin.readLineSync()!);
  print("Enter Marks:");
  int s3 = int.parse(stdin.readLineSync()!);
  print("Enter Marks:");
  int s4 = int.parse(stdin.readLineSync()!);
  print("Enter Marks:");
  int s5 = int.parse(stdin.readLineSync()!);

  double per = (s1 + s2 + s3 + s4 + s5) / 5;
  print("Percentage:${per}%");
}
