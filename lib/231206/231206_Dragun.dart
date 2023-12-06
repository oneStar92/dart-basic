import 'Interface/231206_MechanicUnit.dart';
import 'Abstract/231206_Protoss.dart';

class Dragun extends Protoss implements MechanicUnit{
  @override
  int hp;

  Dragun({
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