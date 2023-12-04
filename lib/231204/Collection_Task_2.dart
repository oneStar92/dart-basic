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

  final people2 = <Person, int>{
    Person(name: '홍길동'): 20,
    Person(name: '한석봉'): 25,
  };

  for (final e in people2.entries) {
    print('${e.key.name}의 나이는 ${e.value}살');
  }

  for (final p in people2.keys) {
    print('${p.name}의 나이는 ${people2[p]}살');
  }

  people2.forEach((person, age) => print('${person.name}의 나이는 $age살'));
}