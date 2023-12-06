import 'Interface/231206_BionicUnit.dart';
import 'Abstract/231206_Terran.dart';

class Marine extends Terran implements BionicUnit {
  @override
  int hp;

  Marine({
    required super.name,
    required this.hp,
  });

  @override
  void move() {
    // TODO: implement move
  }
}