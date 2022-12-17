import 'dart:io';

void main(List<String> args) {
  List<int> list1 = [];
  List<int> list2 = [];
  List<int> list3 = [];

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter Element:");
    list1.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter Element:");
    list2.add(int.parse(stdin.readLineSync()!));
  }
  list1.removeWhere((element) => !list2.contains(element));
  print(list1);
}
