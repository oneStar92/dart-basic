import 'Interface/231206_Unit.dart';

class Squadron {
  static final maxCount = 12;
  List<Unit> members;

  Squadron({
    required this.members,
  });

  void add(Unit unit) {
    if (members.length < maxCount) {
      members.add(unit);
    }
  }
}