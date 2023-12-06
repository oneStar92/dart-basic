import 'Interface/231206_Repairable.dart';
import 'Interface/231206_MechanicUnit.dart';
import 'Interface/231206_Healable.dart';
import 'Abstract/231206_Terran.dart';

class SCV extends Terran implements MechanicUnit, Healable {
  @override
  int hp;

  SCV({
    required super.name,
    required this.hp,
  });

  @override
  void move() {
    // TODO: implement move
  }

  void repair(Repairable repairable) {
    // TODO: implement repair
  }

  int mine() {
    // TODO: implement mine
    return 0;
  }
}