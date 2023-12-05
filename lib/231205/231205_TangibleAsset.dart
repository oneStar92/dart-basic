import '231205_Asset.dart';
import '231205_Thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  final String color;
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double weight) => _weight = weight;

  TangibleAsset({
    required String name,
    required int price,
    required this.color,
    required double weight,
  }) : _weight = weight, super(name: name, price: price);
}