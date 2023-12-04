class Wand {
  String _name;
  double power;

  set name(String name) {
    if (name != null && name.length >= 3) {
      _name = name;
    } else {
      Exception("Invalid name value");
    }
  }

  Wand({
    required name,
    required this.power,
  }) : _name = name;
}