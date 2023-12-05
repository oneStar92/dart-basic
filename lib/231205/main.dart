import '231205_Hero.dart';
import '231205_Slime.dart';
import '231205_PoisonSlime.dart';

void main() {
  final hero1 = Hero(name: 'Hero 1');
  final hero2 = Hero(name: 'Hero 2');
  final slime = Slime('Slime');
  final poisonSlime = PoisonSlime('PoisonSlime');

  slime.attack(hero1);
  poisonSlime.attack(hero1);
  slime.attack(hero2);
  poisonSlime.attack(hero2);
}