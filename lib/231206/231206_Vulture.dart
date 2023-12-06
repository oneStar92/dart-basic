import 'Interface/231206_MechanicUnit.dart';
import 'Abstract/231206_Terran.dart';

class Vulture extends Terran implements MechanicUnit{
  @override
  int hp;

  Vulture({
    required super.name,
    required this.hp,
  });

  @override
  void move() {
    // TODO: implement move
  }
}