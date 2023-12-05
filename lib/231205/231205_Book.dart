import '231205_TangibleAsset.dart';

class Book extends TangibleAsset {
  final String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required this.isbn,
  }) : super(name: name, price: price, color: color);
}