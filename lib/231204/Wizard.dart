import 'Wand.dart';

class Wizard {
  String name;
  int hp;
  int mp;
  Wand wand;

  Wizard({
    required this.name,
    required this.hp,
    required this.mp,
    required this.wand,
  });
}