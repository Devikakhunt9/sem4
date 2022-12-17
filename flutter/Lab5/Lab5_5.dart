void main(List<String> args) {
  Employee e =
      new Employee("DEvika", 20, 9265161952, "address", 1200000, "Computer");
  e.printDetails();
  Manager m = new Manager("name", 123, 1234556735, "address", 56000, "Mech");
  m.printDetails();
}

class Member {
  String? name, address;
  int? age, phone_no;
  double? salary;

  void printSalary() {
    print("Salary");
  }
}

class Employee extends Member {
  String? specialaization;
  Employee(String name, int age, int phone_no, String address, double salary,
      String specialization) {
    this.name = name;
    this.age = age;
    this.phone_no = phone_no;
    this.address = address;
    this.salary = salary;
    this.specialaization = specialaization;
  }

  void printDetails() {
    print("Name:${this.name}");
    print("age:${this.age}");
    print("phoneNo:${this.phone_no}");
    print("Adress:${this.address}");
    print("Salary:${this.salary}");
    print("Specialaization:${this.specialaization}");
  }
}

class Manager extends Member {
  String? departmant;

  Manager(String name, int age, int phone_no, String address, double salary,
      String department) {
    this.name = name;
    this.age = age;
    this.phone_no = phone_no;
    this.address = address;
    this.salary = salary;
    this.departmant = departmant;
  }

  void printDetails() {
    print("Name:${this.name}");
    print("age:${this.age}");
    print("phoneNo:${this.phone_no}");
    print("address:${this.address}");
    print("salary:${this.salary}");
    print("department:${this.departmant}");
  }
}
