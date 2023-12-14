import 'dart:io';

Future<String> readFile(String path) => File(path).readAsString();
Future<void> writeFile(String path, String string) => File(path).writeAsString(string);

void main() {
  /*
  File('sample.csv').readAsString()
      .then((value) => value.replaceAll('한석봉', '이석봉'))
      .then((value) => File('sample_copy.csv').writeAsString(value))
      .catchError((err) => print('Invalid Path'));
   */

  readFile('sample.csv')
      .then((value) => value.replaceAll('한석봉', '김석봉'))
      .then((value) => writeFile('sample_copy.csv', value))
      .catchError((err) => print('Invalid Path'));
}