import 'dart:convert';
import 'package:http/http.dart' as http;

class Mask {
  int count;
  List<Stores> stores;

  Mask({
    required this.count,
    required this.stores,
  });

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        stores = (json['stores'] as List).map((e) => Stores.fromJson(e)).toList();

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores.map((e) => e.toJson()).toList(),
    };
  }
}

class Stores {
  final String? addr;
  final String? code;
  final String? createdAt;
  final double? lat;
  final double? lng;
  final String? name;
  final String? _remainStat;
  final String? stockAt;
  final String? type;

  String get remainStat {
    if (_remainStat == 'plenty') {
      return '충분';
    } else if (_remainStat == 'few') {
      return '여유';
    } else if (_remainStat == 'some') {
      return '부족';
    } else {
      return '없음';
    }
  }

  bool get isVaild {
    if (addr != null &&
        code != null &&
        createdAt != null &&
        lat != null &&
        lng != null &&
        name != null &&
        _remainStat != null &&
        stockAt != null &&
        type != null
    ) {
      return true;
    } else {
      return false;
    }
  }

  Stores({
    this.addr,
    this.code,
    this.createdAt,
    this.lat,
    this.lng,
    this.name,
    String? remainStat,
    this.stockAt,
    this.type,
  }) : _remainStat = remainStat;

  Stores.fromJson(Map<String, dynamic> json)
      : addr = json['addr'],
        code = json['code'],
        createdAt = json['created_at'],
        lat = json['lat'],
        lng = json['lng'],
        name = json['name'],
        _remainStat = json['remain_stat'],
        stockAt = json['stock_at'],
        type = json['type'];

  Map<String, dynamic> toJson() {
    return {
      'addr': addr,
      'code': code,
      'created_at': createdAt,
      'lat': lat,
      'lng': lng,
      'name': name,
      'remain_stat': _remainStat,
      'stock_at': stockAt,
      'type': type,
    };
  }

  @override
  String toString() {
    return '''
이름: $name
주소: $addr
재고상태: $remainStat 
''';
  }
}

Future<Mask> getMask() async {
  final response = await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
  return Mask.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
}


void main() async {
  final mask = await getMask();
  mask.stores.forEach((element) {
    if (element.isVaild) {
      print(element);
    }
  });
}