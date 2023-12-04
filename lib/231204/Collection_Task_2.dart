class Person {
  final String name;

  Person({
    required this.name,
  });
}

void main() {
  final people = <Person>[
    Person(name: '홍길동'),
    Person(name: '한석봉'),
  ];
  for (int i = 0; i < people.length; i++) {
    print(people[i].name);
  }

  for (final person in people) {
    print(person.name);
  }

  people.forEach((person) => print(person.name));
}