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
}