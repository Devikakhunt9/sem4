// import 'dart:ffi'
import 'dart:io';

void main(List<String> args) {
  Bank_Account()
    ..getAccountDetails()
    ..displayAccountDetails();
}

class Bank_Account {
  int? account_No;
  String? user_Name, email, account_type;
  double? account_balance;

  getAccountDetails() {
    stdout.write("Enter AccountNumber:");
    account_No = int.parse(stdin.readLineSync()!);
    stdout.write("Enter UserName:");
    user_Name = stdin.readLineSync()!;
    stdout.write("Enter Email:");
    email = stdin.readLineSync()!;
    stdout.write("Enter Account Type:");
    account_type = stdin.readLineSync()!;
    stdout.write("Enter Account Balance:");
    account_balance = double.parse(stdin.readLineSync()!);
  }

  displayAccountDetails() {
    print("===============================================");
    print("Account Number:${account_No}");
    print("Account Holder:${user_Name}");
    print("Email:${email}");
    print("Account Type:${account_type}");
    print("Account Balance:${account_balance}");
  }
}
