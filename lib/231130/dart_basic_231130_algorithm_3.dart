import 'dart:math';

class Character {
  final String name;
  int health;
  final int attack;
  final int defense;

  Character(this.name, this.health, this.attack, this.defense);

  void showInformation() {
    print('$name - Health: $health, Attack: $attack, Defense: $defense');
  }
}

void main() {
  void play(Character attacker, Character defender) {
    final damage = max(0, attacker.attack - defender.defense);
    defender.health -= damage;
    print('${attacker.name} attacks! ${defender.name} takes $damage damage.');
  }

  var players = [Character('Hero', 100, 10, 1), Character('Slim', 10, 5, 5)];

  while (true) {
    if (players[0].health <= 0) {
      print('${players[0].name} is defeated! ${players[1].name} wins!');
      break;
    } else if (players[1].health <= 0) {
      print('${players[1].name} is defeated! ${players[0].name} wins!');
      break;
    } else {
      players[0].showInformation();
      players[1].showInformation();
      play(players[1], players[0]);
      play(players[0], players[1]);
    }
    print('');
  }
}