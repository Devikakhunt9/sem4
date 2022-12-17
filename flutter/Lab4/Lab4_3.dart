import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter No:");
  int n = int.parse(stdin.readLineSync()!);
  fibbonacci(n);
}

void fibbonacci(int n) {
  int term1 = 0, term2 = 1, sum = 0;
  for (int i = 0; i < n; i++) {
    print("${sum}");
    term1 = term2;
    term2 = sum;
    sum = term1 + term2;
  }
}
