import '231205_Asset.dart';
import '231205_Thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  final String color;

  @override
  double weight;

  TangibleAsset({
    required String name,
    required int price,
    required this.color,
    required this.weight,
  }) : super(name: name, price: price);
}