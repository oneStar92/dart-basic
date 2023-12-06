import 'Interface/231206_Healable.dart';
import 'Interface/231206_BionicUnit.dart';
import 'Abstract/231206_Terran.dart';

class Medic extends Terran implements BionicUnit {
  @override
  int hp;

  Medic({
    required super.name,
    required this.hp,
  });

  @override
  void move() {
    // TODO: implement move
  }

  void heal(Healable healable) {
    // TODO: implement heal
  }
}