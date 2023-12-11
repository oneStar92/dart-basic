class InvalidTypeCasting implements Exception {
  String message = '잘못된 타입 캐스팅 입니다.';
}

class InvalidData implements Exception {
  String message = '잘못된 데이터 입니다.';
}

enum AppError {
  invalidTypeCasting,
  invalidData,
  unknown;

  Exception get error {
    switch (this) {
      case AppError.invalidTypeCasting:
        return InvalidTypeCasting();
      case AppError.invalidData:
        return InvalidData();
      case AppError.unknown:
        return Exception();
    }
  }
}

void some() {
  throw AppError.invalidTypeCasting.error;
}

void main() {
  final numString = '10.5';
  int num;

  try {
    num = int.parse(numString);
  } catch (e) {
    num = 0;
  }

  print(num);

  try {
    some();
  } on InvalidTypeCasting catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}