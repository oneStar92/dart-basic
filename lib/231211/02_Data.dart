import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': age,
  };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() => {
    'name': name,
    'leader': leader.toJson(),
  };
}

void main() {
  final hong = Employee('홍길동', 41);
  final administration = Department('Administration', hong);
  File('company.txt').writeAsStringSync(jsonEncode(administration.toJson()));
}
