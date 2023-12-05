import '231205_Asset.dart';

abstract class TangibleAsset extends Asset {
  final String color;

  TangibleAsset({
    required String name,
    required int price,
    required this.color
  }) : super(name: name, price: price);
}