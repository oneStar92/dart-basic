import '../Interface/231206_Recoverable.dart';
import '231206_Race.dart';

abstract class Zerg extends Race implements Recoverable {
  Zerg({required super.name});
}