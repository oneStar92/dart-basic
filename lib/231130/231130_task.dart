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
  Cleric cleric = Cleric('Cleric');

  cleric.selfAid();
  print(cleric.pray(3));
  cleric.selfAid();
  cleric.selfAid();
  print(cleric.mp);
  print(cleric.pray(50));
  print(cleric.mp);
}