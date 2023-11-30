import 'dart:io';

class A {

}

void main() {
  final firstInput = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  final width = firstInput[0];
  final height = firstInput[1];
  final maximumN = firstInput[2];
  var position = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();

  for (int n = 0; n < maximumN; n++) {
    final input = stdin.readLineSync()!.split(' ');
    if (input[0] == 'U') {
      position[1] += int.parse(input[1]) % height;
      if (position[1] > height) position[1] -= height;
    } else if (input[0] == 'D') {
      position[1] -= int.parse(input[1]) % height;
      if (position[1] < 0) position[1] += height;
    } else if (input[0] == 'R') {
      position[0] += int.parse(input[1]) % width;
      if (position[0] > width) position[0] -= width;
    } else { //L
      position[0] -= int.parse(input[1]) % width;
      if (position[0] < 0) position[0] += width;
    }
  }

  final a1 = A();
  final a2 = A();

  print(position.join(" "));
}