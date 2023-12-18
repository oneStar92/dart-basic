import 'source/mask_api.dart';
import 'mapper/mask_mapper.dart';

void main() async {
  final mask = await getMask();
  final stores = mask.stores?.map((e) => e.toStore()).toList() ?? [];
  stores.forEach(print);
}