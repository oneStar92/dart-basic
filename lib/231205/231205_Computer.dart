import '231205_TangibleAsset.dart';

class Computer extends TangibleAsset {
  final String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.makerName,
  }) : super(name: name, price: price, color: color, weight: weight);
}