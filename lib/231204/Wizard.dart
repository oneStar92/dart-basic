import 'Wand.dart';

class Wizard {
  String _name;
  int hp;
  int mp;
  Wand wand;

  set name(String name) {
    if (name != null && name.length >= 3) {
      _name = name;
    } else {
      Exception("Invalid name value");
    }
  }

  Wizard({
    required name,
    required this.hp,
    required this.mp,
    required this.wand,
  }) : _name = name;
}