import 'Abstract/231206_Protoss.dart';
import 'Interface/231206_BionicUnit.dart';

class Zealot extends Protoss implements BionicUnit {
  @override
  int hp;

  Zealot({
    required super.name,
    required this.hp,
  });

  @override
  void move() {
    // TODO: implement move
  }

  @override
  void recover() {
    // TODO: implement recover
  }
}