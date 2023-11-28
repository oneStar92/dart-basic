/*
void main() {
  int number = 42;
  double pi = 3.14;
  bool isDartFun = true;
  String greeting = 'Hello, Dart!';
  List<int> numbers = [1, 2, 3, 4, 5];
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };

  print(number);
  print(pi);
  print(isDartFun);
  print(greeting);
  print(numbers);
  print(ages);

  number = 100;
  pi = 3.141592;
  isDartFun = false;
  greeting = 'Goodbye, Dart!';
  numbers.add(6);
  ages['Dave'] = 40;

  print(number);
  print(pi);
  print(isDartFun);
  print(greeting);
  print(numbers);
  print(ages);
}
*/
/*
void main() {
  // if-else 문: 조건에 따라 코드 실행 여부 결정
  int number = 42;
  if (number > 50) {
    print('number is greater than 50');
  } else {
    print('number is less than or equal to 50');
  }

  // switch-case 문: 다중 분기 처리
  String fruit = 'apple';
  switch (fruit) {
    case 'apple':
      print('This is an apple');
      break;
    case 'banana':
      print('This is a banana');
      break;
    default:
      print('This is not a fruit');
  }

  // for-in 문: 리스트나 맵의 모든 항목에 대해 반복
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // while 문: 조건이 참인 동안 코드 반복 실행
  int count = 0;
  while (count < 5) {
    print(count);
    count++;
  }

  // do-while 문: 코드를 최소한 한번 실행하고, 조건이 참인 동안 반복 실행
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 3);
}
 */
/*
void main() {
    // 타입 지정된 함수
    int add(int a, int b) {
        return a + b;
    }

    // 화살표 함수
    int multiply(int a, int b) => a * b;

    // forEach()를 사용한 함수 인수와 익명 함수
    var numbers = [1, 2, 3, 4, 5];
    numbers.where((number) => number.isEven).forEach(print);
}
 */
/*
void main() {
  int number = 42;

  if(number > 50) {
    print("number is greater than 50");
  } else {
    print("number is less than or equal to 50")
  }

  String fruit = "apple";
  switch (fruit) {
    case "apple":
      print("This is an apple");
      break;
    case "banana":
      print("This is a banana");
      break;
    default:
      print("This is not a fruit");
  }

  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  int count = 0;
  while (count < 5) {
    print(count);
    count++;
  }

  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 3);
}
*/

class Calculator {
  int add(int lhs, int rhs) => lhs + rhs;
  int subtract(int lhs, int rhs) => lhs - rhs;
  int multiply(int lhs, int rhs) => lhs * rhs;
  int divide(int lhs, int rhs) => lhs ~/ rhs;
}

void main() {
  Calculator calculator = Calculator();
  print("1 + 2 = ${calculator.add(1, 2)}");
  print("5 - 3 = ${calculator.subtract(5, 3)}");
  print("10 * 2 = ${calculator.multiply(10, 2)}");
  print("50 / 3 = ${calculator.divide(50, 3)}");
}