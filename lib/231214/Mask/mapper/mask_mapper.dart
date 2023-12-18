import '../dto/store_dto.dart';
import '../model/store.dart';

extension ToStore on StoreDto {
  Store toStore() {
    final StockState stock;
    if (remainStat == 'plenty') {
      stock = StockState.plenty;
    } else if (remainStat == 'few') {
      stock = StockState.few;
    } else if (remainStat == 'some') {
      stock = StockState.some;
    } else if (remainStat == 'empty' || remainStat == 'break') {
      stock = StockState.empty;
    } else {
      stock = StockState.unknown;
    }
    return Store(
        address: addr ?? '주소 없음',
        name: name ?? '이름 없음',
        stock: stock
    );
  }
}