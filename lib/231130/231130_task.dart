import 'dart:math';

class Cleric {
  static const int maximumHp = 50;
  static const int maximumMp = 50;
  final String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = maximumHp, this.mp = maximumMp});

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maximumHp;
    }
  }

  int pray(int second) {
    final recoveringMP = second + Random().nextInt(3);
    final preMP = mp;
    mp = min(mp + recoveringMP, maximumMp);
    return mp - preMP;
  }
}

void main() {
  // Cleric arthas = Cleric('아서스', hp: 40, mp: 5);
  // Cleric arthas = Cleric('아서스', hp: 35);
  Cleric arthas = Cleric('아서스');
  // Cleric arthas = Cleric(); //Error

  arthas.selfAid();
  print(arthas.pray(3));
  arthas.selfAid();
  arthas.selfAid();
  print(arthas.mp);
  print(arthas.pray(50));
  print(arthas.mp);
}