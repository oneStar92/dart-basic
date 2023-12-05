import 'package:dart_basic/231205/231205_Book.dart';

import '231205_Hero.dart';
import '231205_Slime.dart';
import '231205_PoisonSlime.dart';

void main() {
  final hero1 = Hero(name: 'Hero 1');
  final hero2 = Hero(name: 'Hero 2');
  final slime = Slime('Slime');
  final poisonSlime = PoisonSlime('PoisonSlime');
  final book = Book(name: 'name', price: 100, color: 'color', weight: 100.0,  isbn: 'isbn');
  print(book.weight);
  book.weight = 50.0;
  print(book.weight);
  slime.attack(hero1);
  poisonSlime.attack(hero1);
  slime.attack(hero2);
  poisonSlime.attack(hero2);
}