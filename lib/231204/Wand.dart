class Wand {
  String _name;
  double _power;

  set name(String name) {
    if (name != null && name.length >= 3) {
      _name = name;
    } else {
      Exception("Invalid name value");
    }
  }

  set power(double power) {
    if (power >= 0.5 && power <= 100.0) {
      _power = power;
    } else {
      Exception("Invalid power value");
    }
  }

  Wand({
    required name,
    required power,
  }) : _name = name, _power = power;
}