import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Hour:");
  int h1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Minute:");
  int m1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter hour to add:");
  int h2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter minute to add:");
  int m2 = int.parse(stdin.readLineSync()!);
  Time t1 = Time(h1, m1);
  Time t2 = Time(h2, m2);
  t1.additionOfTime(t2);
}

class Time {
  int? hour, minut;

  Time(int hour, int minut) {
    this.hour = hour;
    this.minut = minut;
  }
  void additionOfTime(Time time) {
    this.minut = this.minut! + time.minut!;
    if (this.minut! >= 60) {
      this.minut = this.minut! - 60;
      this.hour = this.hour! + 1;
    }
    this.hour = this.hour! + time.hour!;
    print("${this.hour}:${this.minut}");
  }
}
