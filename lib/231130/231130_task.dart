import 'dart:math';

class Cleric {
  final String name;
  int hp = 50;
  final int maximumHp = 50;
  int mp = 50;
  final int maximumMp = 50;

  Cleric(this.name);

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