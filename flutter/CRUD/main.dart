import 'dart:io';

import 'User.dart';

void main(List<String> args) {
  User user = new User();

  while (true) {
    print(
        "Enter Ur choice:\n1.Create :\n2.Read :\n3.Update: \n4.Delete \n5.Exit :");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      user.post();
    } else if (choice == 2) {
      user.read();
    } else if (choice == 3) {
      print("Enter Name to update:");
      user.put(stdin.readLineSync(),
          callback: (i) => {
                if (i == 1)
                  {print("Record   updated Sucessfully")}
                else
                  {print("Record Not Found")}
              });
    } else if (choice == 4) {
      print("Enter Name to delete:");
      user.delete(stdin.readLineSync(),
          callback: (i) => {
                if (i == 1)
                  {print("Record deleted Successfully..")}
                else
                  {print("Record Not Found...")}
              });
    } else if (choice == 5) {
      break;
    } else {
      print("enter a valid one...");
    }
    print("===============================");
  }
}
