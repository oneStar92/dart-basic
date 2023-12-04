import 'Wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand wand;

  set name(String name) {
    if (name != null && name.length >= 3) {
      _name = name;
    } else {
      Exception("Invalid name value");
    }
  }

  set hp(int hp) {
    if (hp < 0) {
      _hp = 0;
    } else {
      _hp = hp;
    }
  }

  set mp(int mp) {
    if (mp < 0) {
      Exception("Invalid mp value");
    } else {
      _mp = mp;
    }
  }

  Wizard({
    required name,
    required hp,
    required mp,
    required this.wand,
  }) : _name = name, _hp = hp, _mp = mp;
}