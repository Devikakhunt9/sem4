import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter No:");
  int n = int.parse(stdin.readLineSync()!);
  if (n == 0 || n == 1) {
    print(
        "You eneter ${n} which has special chrectristic. Number is niether prime nor not prime");
  } else if (check(n) == 1) {
    print("The Number ${n} is Prime.. ");
  } else {
    print("The Number ${n} is not Prime");
  }
}

int check(int n) {
  for (int i = 2; i < n / 2; i++) {
    if (n % i == 0) {
      return 0;
    }
  }
  return 1;
}
