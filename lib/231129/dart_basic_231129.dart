/* 3-2
class Person {
  var name;
  var age;

  Person(this.name, this.age);

  void printInfo() {
    print('My name is $name, And I am $age years old.');
  }
}

void main() {
  var person = Person('John Doe', 30);
  person.printInfo();

  var person2 = Person('IL Seong', 32);
  person2.printInfo();
}
 */
/* 3-2
class IronMan {
  String name;
  int powerLevel;

  IronMan(this.name, this.powerLevel);

  void shoot() {
    print('$name is shooting guns!');
  }
}

class IronManMK3 extends IronMan {
  var flyHeight;

  // IronManMK3(String name, int powerLevel, this.flyHeight): super(name, powerLevel);
  IronManMK3(super.name, super.powerLevel, this.flyHeight);

  @override
  void shoot() {
    print('$name is shooting Laser!');
  }

  void fly() {
    print('$name is flying in $flyHeight!');
  }
}

void main() {
  IronMan mk1 = IronMan("mk1", 10);

  IronManMK3 mk3 = IronManMK3("mk3", 20, 1000);

  mk1.shoot();

  mk3.shoot();
  mk3.fly();
}
*/

abstract class IronMan {
  String name;
  String suitColor;

  IronMan(this.name, this.suitColor);

  void fly();
  void shootLasers();
  void withstandDamage();
}

//@override 구문을 사용하여 abstract method 구현
class Mark50 extends IronMan {
  Mark50(super.name, super.suitColor);

  @override
  void fly() {
    print('$name is flying!');
  }

  @override
  void shootLasers() {
    print('$name shoot Lasers!');
  }

  @override
  void withstandDamage() {
    print('$name make huge Damage!');
  }
}

mixin Flyable on Animal {
  void fly() {
    print('$name is flying!');
  }
}

class Animal {
  String name;

  Animal(this.name);
}

class Bird extends Animal with Flyable {
  Bird(super.name);
}

void main() {
  var mark50 = Mark50('Mark 51', 'Red');
  mark50.fly();
  mark50.shootLasers();
  mark50.withstandDamage();

  var bird = Bird('Bird');
  bird.fly();
}