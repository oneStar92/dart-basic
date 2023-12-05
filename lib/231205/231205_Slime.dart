import '231205_Hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix이/가 공객했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }
}