import 'dart:convert';

final String json = '''{
 "collectionChartDataList": [
   {
     "collectionName": "collectionName",
     "collectionSalePrice": null
   },
   {
     "collectionName": "collectionName",
     "collectionSalePrice": [
       {
         "price": 59.75,
         "cvtDatetime": "2023-03-26T08:08:35"
       },
       {
         "price": 60.00,
         "cvtDatetime": "2023-03-26T08:08:45"
       }
     ]
   }
 ]
}''';

class  CollectionChartData {
  List<CollectionChartDataList> collectionChartDataList;

  CollectionChartData({
    required this.collectionChartDataList
  });

  CollectionChartData.fromJson(Map<String, dynamic> json)
      : collectionChartDataList = List<Map<String, dynamic>>
            .from(json['collectionChartDataList'] ?? {})
            .map((e) => CollectionChartDataList.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() => {
    'collectionChartDataList': collectionChartDataList.isEmpty ? null : collectionChartDataList.map((e) => e.toJson()).toList(),
  };
}

class CollectionChartDataList {
  String collectionName;
  List<CollectionSalePrice> collectionSalePrice;

  CollectionChartDataList({
    required this.collectionName,
    required this.collectionSalePrice,
  });

  CollectionChartDataList.fromJson(Map<String, dynamic> json)
      : collectionName = json['collectionName'],
        collectionSalePrice = List<Map<String, dynamic>>
            .from(json['collectionSalePrice'] ?? {})
            .map((e) => CollectionSalePrice.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() => {
    'collectionName': collectionName,
    'collectionSalePrice': collectionSalePrice.isEmpty ? null : collectionSalePrice.map((e) => e.toJson()).toList(),
  };
}

class CollectionSalePrice {
  double price;
  String cvtDatetime;

  CollectionSalePrice({
    required this.price,
    required this.cvtDatetime
  });

  CollectionSalePrice.fromJson(Map<String, dynamic> json)
      : price = json['price'],
        cvtDatetime = json['cvtDatetime'];

  Map<String, dynamic> toJson() => {
    'price': price,
    'cvtDatetime': cvtDatetime,
  };
}

void main() {
  final object = CollectionChartData.fromJson(jsonDecode(json));
  print(jsonEncode(object));
}