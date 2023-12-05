import '231205_Hero.dart';

import '231205_Slime.dart';

class PoisonSlime extends Slime {
  int _countOfPossiblePoisonAttack = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_countOfPossiblePoisonAttack > 0) {
      print('추가로, 독 포자를 살포했다!');
      final damage = (hero.hp / 5).floor();
      hero.hp -= damage;
      print('$damage포인트의 데미지');
      _countOfPossiblePoisonAttack -= 1;
    }
  }
}