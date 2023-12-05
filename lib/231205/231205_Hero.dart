class Hero {
  static const maxHP = 100;
  final String name;
  int _hp;

  int get hp => _hp;
  set hp(int value) => _hp = value < 0 ? 0 : value;

  Hero({
    required this.name,
    int hp = Hero.maxHP
  }) : _hp = hp;
}