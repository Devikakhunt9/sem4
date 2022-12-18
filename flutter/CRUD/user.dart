import 'dart:io';

import 'string_const.dart';

class User {
  List<Map<String, dynamic>> list = [];

  void post() {
    Map<String, dynamic> map = {};
    stdout.write("Enter Name:");
    map[NAME] = stdin.readLineSync()!;
    stdout.write("Enter City:");
    map[CITY] = stdin.readLineSync()!;
    list.add(map);
    print("Added Sucessfully...");
  }

  void read() {
    if (list.length <= 0) {
      print("no record exist...");
    }
    for (int i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      print("Name:${map[NAME]}\nCity:${map[CITY]}");
    }
  }

  void delete(name, {Function? callback}) {
    for (int i = 0; i < list.length; i++) {
      if (list[i][NAME].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        list.remove(list[i]);
        callback!(1);
        return;
      }
      callback!(0);
      print(list);
      return;
    }
  }

  void put(name, {Function? callback}) {
    int count = 0;
    for (int i = 0; i < list.length; i++) {
      if (list[i][NAME].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        print("Enter field u want to update:");
        print(list[i]);
        String key = stdin.readLineSync()!;
        // print(list[i][key.toLowerCase()]);
        // print(key.toLowerCase());
        if (list[i].containsKey(key)) {
          count = 1;
          print("Enter New Value:");
          String new_value = stdin.readLineSync()!;
          list[i][key.toLowerCase()] = new_value;
          print(list[i]);
          callback!(1);
          return;
        } else if (count == 0) {
          callback!(0);
          return;
        }
      }
    }
    callback!(0);
  }
}
