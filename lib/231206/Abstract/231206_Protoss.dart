import '231206_Race.dart';
import '../Interface/231206_Recoverable.dart';

abstract class Protoss extends Race implements Recoverable {
  Protoss({required super.name});
}