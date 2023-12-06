abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }
}

void main() {
  final X obj = A();
  obj.a(); //Aa
  //obj.b(); Error
  //obj.c(); Error

  final Y y1 = A();
  final Y y2 = B();

  y1.a(); //Aa
  y2.a(); //Ba

  final a = A();
  final b = B();
  final list = <Y>[a, b];
  for (var e in list) {
    e.b();
  }
}