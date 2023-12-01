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
    if (second == 0) return 0;
    final randomQuantity = second + Random().nextInt(3);
    final recoverableMP = maximumMp - mp;
    // 회복할 수 있는 양과 랜덤한 양 중 작은 값을 회복할 양으로 할당.
    // 회복할 수 있는 양이 랜덤한 양보다 작은 경우 회복할 수 있는 양 만큼만 회복하기 위해
    final recoveringMP = min(randomQuantity, recoverableMP);
    mp += recoveringMP;
    return recoveringMP;
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