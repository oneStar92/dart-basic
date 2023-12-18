enum StockState {
  plenty,
  few,
  some,
  empty,
  unknown;

  @override
  String toString() {
    switch (this) {
      case StockState.plenty:
        return '충분';
      case StockState.few:
        return '여유';
      case StockState.some:
        return '부족';
      case StockState.empty:
        return '없음';
      case StockState.unknown:
        return '알 수 없음';
    }
  }
}

class Store {
  String address;
  String name;
  StockState stock;

  Store({
    required this.address,
    required this.name,
    required this.stock,
  });

  @override
  String toString() {
  return '''
이름: $name
주소: $address
재고상태: $stock 
''';
  }
}