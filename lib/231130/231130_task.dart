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
    final recoverableMP = maximumMp - mp;
    if (recoverableMP == 0) {
      return recoverableMP;
    } else if (recoverableMP < second) {
      return recoverableMP;
    } else if (recoverableMP == second) {
      return recoverableMP;
    } else {
      final recoveringMP = second + Random().nextInt(3);
      return recoverableMP < recoveringMP ? recoverableMP : recoveringMP;
    }
  }
}