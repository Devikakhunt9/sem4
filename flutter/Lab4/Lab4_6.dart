import 'dart:developer';

void main(List<String> args) {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  countElements(arr);
}

void countElements(List<int> array) {
  int evenNo = 0, oddNo = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      evenNo++;
    } else {
      oddNo++;
    }
  }
  print("Odd Numbers:${oddNo}");
  print("Even Numbers:${evenNo}");
}
