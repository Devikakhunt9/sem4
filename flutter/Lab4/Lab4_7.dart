import 'dart:io';

void main(List<String> args) {
  List<int> array = [];
  stdout.write("Enter No. of Elements:");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    stdout.write("Enter Elements:");
    array.add(int.parse(stdin.readLineSync()!));
  }
  int sum = 0;
  for (int i = 0; i < n; i++) {
    if (array[i] % 3 == 0 || array[i] % 5 == 0) {
      sum += array[i];
    }
  }
  print("Sum:${sum}");
}
