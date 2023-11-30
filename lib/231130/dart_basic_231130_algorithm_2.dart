enum Item {
  chocolate,
  ppeppero,
  fanta,
  cider
}

extension ItemExtension on Item {
  String get krString {
    switch (this) {
      case Item.chocolate:
        return "초콜릿";
      case Item.ppeppero:
        return "빼빼로";
      case Item.fanta:
        return "환타";
      case Item.cider:
        return "사이다";
      default:
        return "";
    }
  }
}

class VendingMachine {
  var items = {
    Item.chocolate: [500, 5],
    Item.ppeppero: [600, 5],
    Item.fanta: [1000, 5],
    Item.cider: [1100, 5],
  };

  void showInformation() {
    print('====== 자판기 상태 ======');
    for (final item in items.keys) {
      print('${item.krString} - 가격: ${items[item]?[0]}원, 수량: ${items[item]?[1]}개');
    }
    print('======================');
  }

  int buy(Item item, int money) {
    var change = money;
    if (items[item] != null) {
      if (items[item]![1] == 0) {
        print('[${item.krString} 구매 실패] 재고가 부족 합니다.');
      } else if (items[item]![0] > money) {
        print('[${item.krString} 구매 실패] 금액이 부족 합니다.');
      } else {
        change -= items[item]![0];
        items[item]![1] -= 1;
        print('[${item.krString} 구매 성공]가격: ${items[item]![0]}원, 거스름돈: $change원, 남은 수량: ${items[item]![1]}개');
      }
    }
    showInformation();
    return change;
  }
}

void main() {
  var deposit = 5000;
  var vendingMachine = VendingMachine();
  vendingMachine.showInformation();
  deposit = vendingMachine.buy(Item.ppeppero, deposit);
}