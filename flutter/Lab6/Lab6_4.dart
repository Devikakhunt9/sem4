import 'dart:io';
// import 'dart:mirrors';

void main(List<String> args) {
  Friend f = new Friend();
  f.getFrdDetail();
}

class Friend {
  List<Map<String, Object?>> friend = [];

  void getFrdDetail() {
    while (true) {
      stdout
          .write("Enter your choice:\n1.Create:\n2.Read:\n3.e\Search\n4.Exit:");
      int choice = int.parse(stdin.readLineSync()!);

      if (choice == 1) {
        Map<String, dynamic> map = {};
        stdout.write("Enter Name:");
        map['name'] = stdin.readLineSync()!;
        stdout.write("Enter City:");
        map['city'] = stdin.readLineSync()!;
        stdout.write("Enter MobileNo:");
        map['mono'] = stdin.readLineSync()!;
        stdout.write("Enter specialazation:");
        map['specialaization'] = stdin.readLineSync()!;
        friend.add(map);
      } else if (choice == 2) {
        printDetails();
      } else if (choice == 3) {
        if (friend.length > 0) {
          print("Enter Name:");
          serachDetails(stdin.readLineSync(),
              callback: (i) => {
                    if (i >= 0)
                      {printDetails(i)}
                    else
                      {print("friend not Found")}
                  });
        } else {
          print("Please...first enter Data");
        }
      } else if (choice == 4) {
        break;
      } else {
        print("Enter Valid Choice 1,2, or 4");
      }
      print("================================================");
    }
  }

  void printDetails([i]) {
    if (i != null) {
      print(".......................................");
      print(
          "Name:${friend[i]['name']}\n2.City:${friend[i]['city']}\n3.Mobile No:${friend[i]['mono']}\n4.Specialization:${friend[i]['specialaization']}");
    } else {
      for (int i = 0; i < friend.length; i++) {
        print(".......................................");
        print(
            "Name:${friend[i]['name']}\n2.City:${friend[i]['city']}\n3.Mobile No:${friend[i]['mono']}\n4.Specialization:${friend[i]['specialaization']}");
      }
    }
  }

  void serachDetails(name, {Function? callback}) {
    int count = 0;
    for (int i = 0; i < friend.length; i++) {
      if (friend[i]['name'].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        count++;
        // print(count);
        callback!(i);
        // return;
      }
      // print(count);
      if (count == 0) {
        // print("${friend.length}");
        // print(i);
        callback!(-1);
        return;
      }
    }
  }
}
